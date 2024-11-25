/* Static Text
 - Testing for Aspect Ratio
 -
 */
// Global Variables
int appWidth, appHeight;
float titleX, titleY, titleWidth, titleHeight;
float coolioLX, coolioLY, coolioLWidth, coolioLHeight;
float lolZX, lolZY, lolZWidth, lolZHeight;
PFont titleFont, lolZFont, coolioLFont;
color ink, bx1, bx2, bx3, red=#900303, blue=#040390, green=#039054, white=#FFFFFF, black=#000000, resetDefaultInk=white;
int size;
String title = "First Light", lolZ="Like That", coolioL="Bane";
//
void setup()
{
size( 500, 700 );
appWidth = width;
appHeight = height;
//
//String[] fontList = PFont.list(); 
//printArray(fontList);
titleFont = createFont("Harrington", 55); //Verify the font exists in Processing.Java
lolZFont = createFont("Lucida Handwriting Italic", 55);
coolioLFont = createFont("Yu Gothic UI Semilight", 55);
//
titleX = appWidth*1/10;
titleY = appHeight*1/10;
titleWidth = appWidth*8/10;
titleHeight = appHeight*1/10;
//
coolioLX = titleX;
coolioLY = appHeight*4.5/10; 
coolioLWidth = titleWidth;
coolioLHeight = titleHeight;
//
lolZX = titleX; 
lolZY = appHeight*8/10;
lolZWidth = titleWidth; 
lolZHeight = titleHeight;
//
bx1 = color(random(255), random(255), random(255));
bx2 = color(random(255), random(255), random(255));
bx3 = color(random(255), random(255), random(255));
//
//DIVs
fill(bx1);
rect( titleX, titleY, titleWidth, titleHeight ); 
fill(0);
//
fill(bx2);
rect( coolioLX, coolioLY, coolioLWidth, coolioLHeight ); 
fill(0);
//
fill(bx3);
rect( lolZX, lolZY, lolZWidth, lolZHeight ); 
fill(0);
} //End setup
//
void draw()
{
ink = black; 
fill(ink);
textAlign(CENTER, CENTER);
size = 60; 
textFont( titleFont, size ); 
text( title, titleX, titleY, titleWidth, titleHeight );
fill(ink);
size = 49;
textFont( lolZFont, size ); 
text( lolZ, lolZX, lolZY, lolZWidth, lolZHeight );
fill(ink);
size = 60;
textFont( coolioLFont, size ); 
text( coolioL, coolioLX, coolioLY, coolioLWidth, coolioLHeight );
} //End draw
//
void mousePressed() {} 
//
void keyPressed() {}
//
//End main
