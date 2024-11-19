//GlobaL Variables
int appWidth, appHeight;
float bgImageX, bgImageY, bgImageWidth, bgImageHeight;
PImage picBg, picThai;
//
float thaiX, thaiY, thaiWidth, thaiHeight;
float picThaiWidthChanged, picThaiWidth, picThaiHeightChanged, picThaiHeight;
float ratio, biggerSide, smallerSide;

boolean systemWorked = false;

//
void setup() {
  size(1000, 700);
  appWidth = width;
  appHeight = height;
  //
  //Population
  bgImageX = appWidth*0;
  bgImageY = appHeight*0;
  bgImageWidth = appWidth-1;
  bgImageHeight = appHeight-1;
  picBg = loadImage("../../../Images/ruslxdteccmnsnklxg3l.jpg");
  if (picBg == null) {
    println("Error: Background image not found!");
    exit(); // Exit the program if the image is missing
  }
  //
  thaiX = appWidth /3;
  thaiY = appHeight /3;
  thaiWidth = appWidth /4;
  thaiHeight = appHeight /6;
  picThaiWidthChanged = picThaiWidth = 298;
  picThaiHeightChanged = picThaiHeight = 168;
  picThai = loadImage("../../../Images/muaythai.jpg");
  if (picThai == null) {
    println("Error: Thai image not found!");
    exit(); // Exit the program if the image is missing
  }
  systemWorked = true;
  //
  //image compression
  biggerSide = ( picThaiWidth < picThaiHeight ) ? picThaiWidth : picThaiHeight ;
  smallerSide = ( picThaiHeight > picThaiWidth ) ? picThaiWidth : picThaiHeight ;
  ratio = ( biggerSide / smallerSide); //Ratio = bigger than 1, division = smaller, multiply = larger.
  println( biggerSide, smallerSide, ratio );
  if ( picThaiWidth > picThaiHeight ) {
    picThaiHeightChanged = picThaiHeight;
    picThaiWidthChanged = ( picThaiWidth > picThaiHeight ) ? picThaiWidthChanged / ratio : picThaiWidthChanged / ratio;
    //
    println( "inside If-true", picThaiWidthChanged);
    //
  } else {
    picThaiWidthChanged = thaiWidth;
    picThaiHeightChanged = ( picThaiWidth > picThaiHeight ) ? picThaiWidthChanged / ratio : picThaiWidthChanged / ratio;
    //
    println( "Inside If-false", picThaiHeightChanged, ratio);
    //
  }
  //
  //DIVs
  rect( bgImageX, bgImageY, bgImageWidth, bgImageHeight );
  rect( thaiX, thaiY, thaiWidth, thaiHeight);
   if (systemWorked) {
      for (int i = 0; i < 1; i++) {
    println("Lock in from life.");
      }
  }
}

void draw() {
  //Draw Image One Time, for testing
  image( picBg, bgImageX, bgImageY, bgImageWidth, bgImageHeight );
  image( picThai, thaiX, thaiY, picThaiWidthChanged, picThaiHeightChanged);
}
void mousePressed () {
}
//
void keyPressed () {
}
//
