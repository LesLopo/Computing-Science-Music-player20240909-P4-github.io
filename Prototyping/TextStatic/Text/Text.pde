//GV
int appWidth, appHeight;
float titleX, titleY, titleWidth, titleHeight;
float coolioLX, coolioLY, coolioLWidth, coolioLHeight;
float lolZX, lolZY, lolZWidth, lolZHeight;
PFont titleFont, lolZFont, coolioLFont;
color ink, bx1, bx2, bx3, red=#900303, blue=#040390, green=#039054, white=#FFFFFF, black=#000000, resetDefaultInk=white;
int size;
String title = "First Light", lolZ="Like That", coolioL="Bane";
Boolean randomColour= false;
//
void setup()
{
  size( 500, 700 );
  appWidth = width;
  appHeight = height;
  //
  //String[] fontList = PFont.list();
  //printArray(fontList);
  titleFont = createFont("Monospaced.bolditalic", 55);
  lolZFont = createFont("Lucida Handwriting Italic", 55);
  coolioLFont = createFont("Yu Gothic UI Semilight", 55);
  //
  titleX = appWidth*1.5/10;
  titleY = appHeight*1.5/10;
  titleWidth = appWidth*7/10;
  titleHeight = appHeight*1.5/10;
  //
  coolioLX = titleX;
  coolioLY = appHeight*4.5/10;
  coolioLWidth = titleWidth;
  coolioLHeight = titleHeight;
  //
  lolZX = titleX;
  lolZY = appHeight*7.5/10;
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
  ink = ( randomColour == true ) ? color( random(256), random(256), random(256) ) : black;
  fill(ink);
  textAlign(CENTER, CENTER);
  size = 50;
  textFont( titleFont, size );
  text( title, titleX, titleY, titleWidth, titleHeight );
  //
  ink = ( randomColour == true ) ? color( random(256), random(256), random(256) ) : black;
  fill(ink);
  size = 60;
  textFont( lolZFont, size );
  text( lolZ, lolZX, lolZY, lolZWidth, lolZHeight );
  //
  ink = ( randomColour == true ) ? color( random(256), random(256), random(256) ) : black;
  fill(ink);
  size = 80;
  textFont( coolioLFont, size );
  text( coolioL, coolioLX, coolioLY, coolioLWidth, coolioLHeight );
} //End draw
//
void mousePressed() {
}
//
void keyPressed() {
  if ( randomColour == true ) {
    randomColour = false;
  } else {
    randomColour = true;
  }
}//
//END MAIN
