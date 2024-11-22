/* Static Text
-Text Aspect Ratio
*/
//Global Variables
int appWidth, appHeight;
//
float titleX, titleY, titleWidth, titleHeight;
float coolioX, coolioY, coolioWidth, coolioHeight;
float lolzX, lolzY, lolzWidth, lolzHeight;
PFont titleFont, lolzFont, coolioFont;
color red=#AA0913, black=#000000, resetDefaultInk=black;
int size;
String title = "Lock in";
String lolz = "k";
String coolio = "huh";
//
//Display
size(500, 700);
appWidth = width;
appHeight = height;
//
String[] fontList = PFont.list(); // List every fonts available
printArray(fontList); //Ravie, Rage Italic, Rockwell
titleFont = createFont("Ravie", 55);
lolzFont = createFont("Rage Italic", 55);
coolioFont = createFont("Rockwell", 55);
//POPULATION
titleX = appWidth*1/10;
titleY = appHeight*1/10;
titleWidth = appWidth*8/10;
titleHeight = appHeight*1/10;
//
coolioX = titleX;
coolioY = appHeight*4.5/10;
coolioWidth = titleWidth;
coolioHeight = titleHeight;
//
lolzX = titleX;
lolzY = appHeight*8/10;
lolzWidth = titleWidth;
lolzHeight = titleHeight;
//
//DIVs
rect(titleX, titleY, titleWidth, titleHeight);
rect( coolioX, coolioY, coolioWidth, coolioHeight);
rect(lolzX, lolzY, lolzWidth, lolzHeight);
//
//Drawing text
fill(red); 
textAlign(CENTER, CENTER);
size = 12;
textFont(titleFont, size);
text(title, titleX, titleY, titleHeight, titleWidth);
//
textFont(lolzFont, size);
text(lolz, lolzX, lolzY, lolzHeight, lolzWidth);
//
textFont(coolioFont, size);
text(coolio, coolioX, coolioY, coolioHeight, coolioWidth);
