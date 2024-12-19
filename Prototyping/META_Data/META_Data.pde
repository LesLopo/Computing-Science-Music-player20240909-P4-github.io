// META Data - Strings
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

// Global Variables
Minim minim;
int appWidth, appHeight;
float metaDataX1, metaDataY1, metaDataWidth1, metaDataHeight1;
float metaDataX2, metaDataY2, metaDataWidth2, metaDataHeight2;
float metaDataX3, metaDataY3, metaDataWidth3, metaDataHeight3;
//
int numberOfSongs = 3;
AudioPlayer[] playList = new AudioPlayer[numberOfSongs];
AudioMetaData[] playListTitleData = new AudioMetaData[numberOfSongs];
AudioMetaData[] playListPositionMetaData = new AudioMetaData[numberOfSongs];
AudioMetaData[] playListTimeLeftMetaData = new AudioMetaData[numberOfSongs];
AudioMetaData[] playListTotalRemainingMetaData = new AudioMetaData[numberOfSongs];
int currentSong = 0;

void setup() {
  fullScreen();
  appWidth = displayWidth;
  appHeight = displayHeight;

  // Initialize Minim
  minim = new Minim(this);

  // Populate playlist
  String musicPathway = "Music/";
  String mp3FileName = ".mp3";
  String beatYourCompetition = "Beat_Your_Competition";
  String cycles = "Cycles";
  String eureka = "Eureka";

  String directory = "../../../" + musicPathway;

  playList[0] = minim.loadFile(directory + beatYourCompetition + mp3FileName);
  playList[1] = minim.loadFile(directory + cycles + mp3FileName);
  playList[2] = minim.loadFile(directory + eureka + mp3FileName);

  playList[currentSong].play();

  // Title
  metaDataX1 = appWidth * 1 / 10; 
  metaDataY1 = appHeight * 4 / 10;
  metaDataWidth1 = appWidth * 8 / 10;
  metaDataHeight1 = appHeight * 2 / 10;

  // Song Position
  metaDataX2 = appWidth * 1 / 10;
  metaDataY2 = appHeight * 2 / 10;
  metaDataWidth2 = appWidth * 3 / 10;
  metaDataHeight2 = appHeight * 1 / 10;

  // Song Length
  metaDataX3 = appWidth * 6 / 10;
  metaDataY3 = appHeight * 7 / 10;
  metaDataWidth3 = appWidth * 3 / 10;
  metaDataHeight3 = appHeight * 1 / 10;

  // Rectangles
  rect(metaDataX1, metaDataY1, metaDataWidth1, metaDataHeight1);
  rect(metaDataX2, metaDataY2, metaDataWidth2, metaDataHeight2);
  rect(metaDataX3, metaDataY3, metaDataWidth3, metaDataHeight3);
}

void draw() {
  // No changes needed here yet
}

void mousePressed() {
  // No changes needed here yet
}

void keyPressed() {
  // No changes needed here yet
}
