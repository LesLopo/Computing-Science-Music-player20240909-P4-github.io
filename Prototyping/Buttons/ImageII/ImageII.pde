//GlobaL Variables
int appWidth, appHeight;
float backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight;
PImage picBackground, picThai;
//
float thaiX, thaiY, thaiWidth, thaiHeight;
int picThaiWidthChanged, picThaiWidth, picThaiHeightChanged, picThaiHeight;
float ratio, biggerSide, smallerSide;
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
  //
  thaiX = appWidth * 1/3;
  thaiY = appHeight * 1/3;
  thaiWidth = appWidth * 1/4;
  thaiHeight = appHeight * 1/5;
  picThaiWidthChanged = picThaiWidth = 299;
  picThaiHeightChanged = picThaiHeight = 168;
  picThai = loadImage("../../../Images/muaythai.jpg");
  //
  //image compression
  biggerSide = ( picThaiWidth > picThaiHeight ) ? picThaiWidth : picThaiHeight ;
  smallerSide = ( picThaiHeight < picThaiWidth ) ? picThaiHeight : picThaiWidth ;
  ratio = biggerSide / smallerSide; //Ratio = bigger than 1, division = smaller, multiply = larger.
  println( biggerSide, smallerSide, ratio );
  if () {
  } else {
  }
  //
  //DIVs
  rect( backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
  rect( thaiX, thaiY, thaiWidth, thaiHeight);
}
void draw() {
  //Draw Image One Time, for testing
  //image( picBackground, backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
  image( picThai, thaiX, thaiY, picThaiWidthChanged, picThaiHeightChanged);
}
void mousePressed () {
}
//
void keyPressed () {
}
//
