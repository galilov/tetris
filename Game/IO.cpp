/*****************************************************************************************
/* File: IO.cpp
/* Desc: Class for handling inpung & drawing, it uses SDL for the rendering. Change the methods 
/* of this class in order to use a different renderer
/*       
/*
/* gametuto.com - Javier Lуpez Lуpez (javilop.com)
/*
/*****************************************************************************************
/*
/* Creative Commons - Attribution 3.0 Unported
/* You are free:
/*	to Share — to copy, distribute and transmit the work
/*	to Remix — to adapt the work
/*
/* Under the following conditions:
/* Attribution. You must attribute the work in the manner specified by the author or licensor 
/* (but not in any way that suggests that they endorse you or your use of the work).
/*
/*****************************************************************************************/

// ------ Includes -----

#include "IO.h"
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <sys/select.h>
#include <termios.h>


/*
======================================									
Init
====================================== 
*/
IO::IO() :display(8, 5, 0)
{
	InitGraph ();
}


/* 
======================================									
Clear the screen to black
====================================== 
*/
void IO::ClearScreen() 
{
	display.clear();
}


/* 
======================================									
Draw a rectangle of a given color

Parameters:
>> pX1, pY1: 		Upper left corner of the rectangle
>> pX2, pY2: 		Lower right corner of the rectangle
>> pC				Rectangle color
====================================== 
*/
void IO::DrawRectangle (int pX1, int pY1, int pX2, int pY2, enum color pC)
{
	display.rectangle(pX1, pY1, pX2, pY2, true);
}


/* 
======================================									
Return the screen height
====================================== 
*/
int IO::GetScreenHeight()
{
	return display.getRowCount();
}


/* 
======================================									
Update screen
====================================== 
*/
void IO::UpdateScreen()
{
	display.update();
}


/* 
======================================									
Keyboard Input
====================================== 
*/


struct termios orig_termios;

void reset_terminal_mode()
{
    tcsetattr(0, TCSANOW, &orig_termios);
}

void set_conio_terminal_mode()
{
    struct termios new_termios;

    /* take two copies - one for now, one for later */
    tcgetattr(0, &orig_termios);
    memcpy(&new_termios, &orig_termios, sizeof(new_termios));

    /* register cleanup handler, and set the new terminal mode */
    atexit(reset_terminal_mode);
    cfmakeraw(&new_termios);
    tcsetattr(0, TCSANOW, &new_termios);
}

int kbhit()
{
    struct timeval tv = { 0L, 0L };
    fd_set fds;
    FD_ZERO(&fds);
    FD_SET(0, &fds);
    return select(1, &fds, NULL, NULL, &tv);
}

int getch()
{
    int r;
    unsigned char c;
    if ((r = read(0, &c, sizeof(c))) < 0) {
        return r;
    } else {
        return c;
    }
}


int IO::Pollkey()
{
    if (kbhit()) {
        return Getkey();
    }
	return -1;
}

/* 
======================================									
Keyboard Input
====================================== 
*/
int IO::Getkey()
{
    switch (getch()) {
        case 's':
            return SDLK_DOWN;
        case 'a':
            return SDLK_LEFT;
        case 'd':
            return SDLK_RIGHT;
        case 'w':
            return SDLK_UP;
        case 'x':
            return SDLK_x;
        case 'z':
            return SDLK_z;
        case 27:
            exit(3);
    }
}

/* 
======================================									
Keyboard Input
====================================== 
*/
int IO::IsKeyDown (int pKey)
{
    if (kbhit()) return getch() == pKey;
    return 0;
}

/* 
======================================									
SDL Graphical Initialization
====================================== 
*/
int IO::InitGraph()
{
    set_conio_terminal_mode();
	display.hardwareInit();
	display.setRotation(Max7219Display::PORTRAIT);
    return 0;
}
