//
// Created by Alexander Galilov on 28.04.2019.
// E-Mail: alexander.galilov@gmail.com
//

#include "Max7219Display.h"
#include <wiringPiSPI.h>
#include <stdexcept>
#include <unistd.h>
#include <vector>

Max7219Display::Max7219Display(size_t nCols, size_t nRows, int channel) :
        _nColPixels(nCols * 8), _nRowPixels(nRows * 8),
        _nColMatrices(nCols), _nRowMatrices(nRows),
        _lengthInMatrices(nCols * nRows),
        _spiChannel(channel), _isDirty(true) {
    _rawData.reserve(_lengthInMatrices * 2); // 2 bytes per command per matrix
    _videoMatrix.reserve(_nColPixels * _nRowPixels);
    setRotation(ROTATION::LANDSCAPE);
    clear();
    _fd = wiringPiSPISetup(_spiChannel, CLOCK_RATE);
}

Max7219Display::~Max7219Display() {
    close(_fd);
}

bool Max7219Display::setPixel(size_t x, size_t y, bool to) {
    size_t index = 0;
    if (y >= getRowCount())
        return false;
    if (x >= getColCount())
        return false;
    switch (_rotation) {
        case LANDSCAPE:
            index = x + y * _nColPixels;
            break;
        case PORTRAIT:
            index = _nColPixels - 1 - y + x * _nColPixels;
            break;
        case LANDSCAPE_INV:
            index = (_nColPixels - 1 - x) + (_nRowPixels - 1 - y) * _nColPixels;
            break;
        case PORTRAIT_INV:
            index = y + (_nRowPixels - 1 - x) * _nColPixels;
            break;
    }

    if (_videoMatrix[index] != to) {
        _videoMatrix[index] = to;
        _isDirty = true;
    }
    return _isDirty;
}

void Max7219Display::clear() {
    _videoMatrix.clear();
    for (int i = 0; i < _nColPixels * _nRowPixels; i++) {
        _videoMatrix.emplace_back(false);
    }
    _isDirty = true;
}

void Max7219Display::setBrightness(unsigned char brightness) {
    Max7219Cmd(MAX7219_BRIGHTNESS, brightness).addToVector(_rawData, _lengthInMatrices);
    _rawDataWrite();
}

void Max7219Display::update() {
    if (!_isDirty) return;
    _isDirty = false;
    for (size_t rowPixel = 0; rowPixel < 8; rowPixel++) {
        for (int rowMatrix = _nRowMatrices - 1; rowMatrix >= 0; --rowMatrix) {
            for (int colMatrix = _nColMatrices - 1; colMatrix >= 0; --colMatrix) {
                unsigned char pixels = 0;
                for (size_t colPixel = 0; colPixel < 8; colPixel++) {
                    const auto indexPixel =
                            colMatrix * 8 + rowMatrix * _nColPixels * 8 + rowPixel * _nColPixels + colPixel;
                    pixels *= 2;
                    pixels |= (_videoMatrix[indexPixel] ? 1U : 0);
                }
                Max7219Cmd(rowPixel + 1, pixels).addToVector(_rawData, 1);
            }
        }
        _rawDataWrite();
    }
}

void Max7219Display::hardwareInit() {
    Max7219Cmd commands[] = {Max7219Cmd(MAX7219_TEST, 0),
                             Max7219Cmd(MAX7219_DECODE_MODE, 0),
                             Max7219Cmd(MAX7219_SCAN_LIMIT, 7),
                             Max7219Cmd(MAX7219_SHUTDOWN, 0),
                             Max7219Cmd(MAX7219_BRIGHTNESS, DEFAULT_BRIGHTNESS),
                             Max7219Cmd(1, 0),
                             Max7219Cmd(2, 0),
                             Max7219Cmd(3, 0),
                             Max7219Cmd(4, 0),
                             Max7219Cmd(5, 0),
                             Max7219Cmd(6, 0),
                             Max7219Cmd(7, 0),
                             Max7219Cmd(8, 0),
                             Max7219Cmd(MAX7219_SHUTDOWN, 1)};
    for (auto &cmd : commands) {
        cmd.addToVector(_rawData, _lengthInMatrices);
        _rawDataWrite();
    }
}

void Max7219Display::line(int x1, int y1, int x2, int y2, bool pixelValue) {
    const int deltaX = abs(x2 - x1);
    const int deltaY = abs(y2 - y1);
    const int signX = x1 < x2 ? 1 : -1;
    const int signY = y1 < y2 ? 1 : -1;
    int error = deltaX - deltaY;
    setPixel(x2, y2, pixelValue);
    while (x1 != x2 || y1 != y2) {
        setPixel(x1, y1, pixelValue);
        const int error2 = error * 2;
        //
        if (error2 > -deltaY) {
            error -= deltaY;
            x1 += signX;
        }
        if (error2 < deltaX) {
            error += deltaX;
            y1 += signY;
        }
    }
}

void Max7219Display::rectangle(int x1, int y1, int x2, int y2, bool pixelValue) {
    int xStart = x1 > x2 ? x2 : x1;
    int xEnd = x1 > x2 ? x1 : x2;
    int yStart = y1 > y2 ? y2 : y1;
    int yEnd = y1 > y2 ? y1 : y2;
    for (int x = xStart; x <= xEnd; x++) {
        for (int y = yStart; y <= yEnd; y++) {
            setPixel(x, y, pixelValue);
        }
    }
}

void Max7219Display::circle(int x0, int y0, int radius, bool pixelValue) {
    int x = 0;
    int y = radius;
    int delta = 1 - 2 * radius;
    int error = 0;
    while (y >= 0) {
        setPixel(x0 + x, y0 + y, pixelValue);
        setPixel(x0 + x, y0 - y, pixelValue);
        setPixel(x0 - x, y0 + y, pixelValue);
        setPixel(x0 - x, y0 - y, pixelValue);
        error = 2 * (delta + y) - 1;
        if (delta < 0 && error <= 0) {
            ++x;
            delta += 2 * x + 1;
            continue;
        }
        error = 2 * (delta - x) - 1;
        if (delta > 0 && error > 0) {
            --y;
            delta += 1 - 2 * y;
            continue;
        }
        ++x;
        delta += 2 * (x - y);
        --y;
    }
}

void Max7219Display::_rawDataWrite() {
    write(_fd, &_rawData[0], _rawData.size());
    _rawData.clear();
}

