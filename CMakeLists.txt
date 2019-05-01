cmake_minimum_required(VERSION 3.13)
project(tetris)

set(CMAKE_CXX_STANDARD 14)

add_executable(tetris main.cpp Game/Board.h Game/Board.cpp Game/Game.h Game/Game.cpp Game/IO.h Game/IO.cpp Game/Pieces.h Game/Pieces.cpp Game/SDL_keysym.h MAX7219/Max7219Display.cpp MAX7219/Max7219Display.h)
target_link_libraries(tetris wiringPi)
