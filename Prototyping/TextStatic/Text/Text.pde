/* Static Text
-Text Aspect Ratio
*/
//Global Variables
int appWidth, appHeight;
//
float titleX, titleY, titleWidth, titleHeight;
float coolioX, coolioY, coolioWidth, coolioHeight;
float footerX, footerY, footerWidth, footerHeight;
//
//Display
size(500, 700);
appWidth = width;
appHeight = height;
//
//POPULATION
titleX = appWidth*1/10;
titleY = appHeight*1/10;
titleWidth = appWidth*8/10;
titleHeight = appHeight*1.5/10;
//
coolioX = titleX;
coolioY = appHeight*4.5/10;
coolioWidth = titleWidth;
coolioHeight = titleHeight;
//
footerX = titleX;
footerY = appHeight*8/10;
footerWidth = titleWidth;
footerHeight = titleHeight;
//
//DIVs
rect(titleX, titleY, titleWidth, titleHeight);
rect( coolioX, coolioY, coolioWidth, coolioHeight);
rect(footerX, footerY, footerWidth, footerHeight);
