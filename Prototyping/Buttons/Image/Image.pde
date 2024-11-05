import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//Global Variables
Minim minim;
int numberOfSongs = 4; //Able to Autodetect based on Pathway
AudioPlayer[] song = new AudioPlayer[numberOfSongs];
int currentSong = numberOfSongs - numberOfSongs;  //beginning current song as ZERO
//
int appWidth, appHeight;
float imageDIV_X, imageDIV_Y, imageDIV_Width, imageDIV_Height;
float backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight;
PImage picBackground;
//
void setup()
{
  size(1000, 800);
  appWidth = width;
  appHeight = height;
  //Variables for any music button
  imageDIV_Width = appWidth*1/2;
  imageDIV_Height = appHeight*1/2;
  imageDIV_X = imageDIV_Width - imageDIV_Width*1/2;
  imageDIV_Y = imageDIV_Height- imageDIV_Height*1/2;
  //Use if statement to change, introduce ternary operator
  //
  //Population (Variables)
  backgroundImageX = appWidth*0;
  backgroundImageY = appHeight*0;
  backgroundImageWidth = appWidth-1;
  backgroundImageHeight = appHeight-1;
  picBackground = loadImage("../../../Images/ruslxdteccmnsnklxg3l.jpg");
  //Work out a case Study:
  if ( imageDIV_Width >= imageDIV_Height ) { // Landscape //error: square does not go in the middle
  } else { //Portrait
    println ( );
  }
  //float padding = 1.0/4.0;
  //float stopButtonSize = 1.0-(1.0/4.0);
  /*
  stopWidth = musicButtonDIV_Width*stopButtonSize; //stopButtonSize
   stopHeight = musicButtonDIV_Height*stopButtonSize; //stopButtonSize
   stopX = musicButtonDIV_X+padding;
   stopY = musicButtonDIV_Y+padding;
   */
  //
  minim = new Minim(this); //load from data directory, loadFile should also load from project folder
  //
  // Load Music
  String musicPathway = "Music/";
  String mp3FileName = ".mp3";
  //Alphebetical order, same as OS ordering files
  String beatYourCompetition = "Beat_Your_Competition";
  String cycles = "Cycles";
  String eureka = "Eureka";
  //
  //Add Reading into Array
  String directory = "../../../" + musicPathway;
  String file = directory + cycles + mp3FileName;
  song[currentSong] = minim.loadFile( file );
  file = directory + beatYourCompetition + mp3FileName;
  song[currentSong+=1] = minim.loadFile( file );
  file = directory + cycles + mp3FileName;
  song[currentSong+=1] = minim.loadFile( file );
  file = directory + eureka + mp3FileName;
  song[currentSong+=1] = minim.loadFile( file );
  //
  currentSong = 0;
  //
  //DIVs
  //rect() based on variables; variables change with program (introduces parameters of a function and TABS)
  //rect( X, Y, Width, Height );
  rect( imageDIV_X, imageDIV_Y, imageDIV_Width, imageDIV_Height );
  rect( backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
  //
  //Draw Image One Time, for testing
  image( picBackground, backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
} //End setup
//
void draw() {
  //background(200); // Gray Scale: 0-255
  rect( imageDIV_X, imageDIV_Y, imageDIV_Width, imageDIV_Height );
  //fill();
} //End draw
//
void mousePressed() {
} //End mousePressed
//
void keyPressed() {
  //if ( key=='P' || key=='p' ) song[currentSong].loop(); //Simple Play, no double tap possible
  //
  if ( key=='P' || key=='p' ) song[currentSong].play(); //Simple Play, no double tap possible
  //
  if ( key=='s' || key=='S' ) song[currentSong].pause(); //Simple Play, no double tap possible
  //
  if ( key=='S' | key=='s' ) { //STOP
    if ( song[currentSong].isPlaying() ) {
      song[currentSong].unmute(); //single tap
    } else {
      song[currentSong].mute(); //double tap
    }
  }
  if ( key=='O' || key=='o' ) { // Pause
    if ( song[currentSong].isPlaying() ) {
      song[currentSong].pause();
    } else {
      song[currentSong].play();
    }
  }
  if ( key==CODED || keyCode==ESC ) exit(); // QUIT //UP
  if ( key=='Q' || key=='q' ) exit(); // QUIT
  //
  if ( key=='N' || key=='n' ) { // NEXT //See .txt for starter hint
    if ( song[currentSong].isPlaying() ) {
      song[currentSong].pause();
      song[currentSong].rewind();
      //
      if ( currentSong==numberOfSongs-1 ) {
        currentSong = 0;
      } else {
        currentSong++;
      }
      song[currentSong].play();
    } else {
      //
      song[currentSong].rewind();
      //
      if ( currentSong==numberOfSongs-1 ) {
        currentSong = 0;
      } else {
        currentSong++;
      }
      // NEXT will not automatically play the song
      //song[currentSong].play();
    }
  }
} //End keyPressed
//
// End Main Program
