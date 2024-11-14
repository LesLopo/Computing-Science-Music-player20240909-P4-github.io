//GloBAL Variables
int appWidth, appHeight;
float backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight;
PImage picBackground;
//
float knightX, knightY, knightWidth, knightHeight;
//
void setup() {
  size(1000, 700);
  appWidth = width;
  appHeight = height;
  //
  //Population
  backgroundImageX = appWidth*0;
  backgroundImageY = appHeight*0;
  backgroundImageWidth = appWidth-1;
  backgroundImageHeight = appHeight-1;
  picBackground = loadImage("../../../Images/ruslxdteccmnsnklxg3l.jpg");
  knightX = appWidth;
  knightY = appHeight;
  knightWidth = appWidth;
  knightHeight = appHeight;
  //
  //DIVs
  rect( backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
  rect( knightX, knightY, knightWidth, knightHeight);
}
void draw() {
  //Draw Image One Time, for testing
  image( picBackground, backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
}
void mousePressed () {
}
//
void keyPressed () {
}
//
