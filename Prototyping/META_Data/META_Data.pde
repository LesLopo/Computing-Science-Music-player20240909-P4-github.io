//META Data - Strings


import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//Global Variables
int appWidth, appHeight;
float metaDataX1, metaDataY1, metaDataWidth1, metaDataHeight1;
float metaDataX2, metaDataY2, metaDataWidth2, metaDataHeight2;
float metaDataX3, metaDataY3, metaDataWidth3, metaDataHeight3;
//
Minim minim;
int numberOfSongs = 3;
AudioPlayer[] playList = new AudioPlayer[numberOfSongs];
AudioMetaData[] playListTitleData = new AudioMetaData[numberOfSongs];
AudioMetaData[] playListPositionMetaData = new AudioMetaData[numberOfSongs];
AudioMetaData[] playListTimeLeftMetaData = new AudioMetaData[numberOfSongs];
AudioMetaData[] playListTotalRemainingMetaData = new AudioMetaData[numberOfSongs];
int currentSong = numberOfSongs - numberOfSongs;
//
void setup() 
{
  fullScreen();
  appWidth = displayWidth;
  appHeight = displayHeight;
  //POPULATION
  //
  //TITLE
  metaDataX1 = appWidth * 1/10; 
  metaDataY1 = appHeight * 4/10;
  metaDataWidth1 = appWidth * 8/10;
  metaDataHeight1 = appHeight * 2/10;
  //SONG POSITION
  metaDataX2 = appWidth * 1/10;
  metaDataY2 = appHeight * 2/10;
  metaDataWidth2 = appWidth * 2/10;
  metaDataHeight2 = appHeight * 1/10;
  //SONG LENGHT
  metaDataX3 = appWidth * 7/10 ;
  metaDataY3 = appHeight * 7/10 ;
  metaDataWidth3 = appWidth * 2/10;
  metaDataHeight3 = appHeight * 1/10;
  //
  //DIV 
  //
  rect( metaDataX1, metaDataY1, metaDataWidth1, metaDataHeight1);
  rect( metaDataX2, metaDataY2, metaDataWidth2, metaDataHeight2);
  rect( metaDataX3, metaDataY3, metaDataWidth3, metaDataHeight3);

} //End set ups
//
void draw() 
{
} //End drawing
//
void mousePressed() 
{
} //End mousePressed
//
void keyPressed() 
{
} //End keyPressed
//
//End Program Codes
