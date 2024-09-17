import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//Global Variables
Minim minim; 
int numberOfSongs = 8; //Able to Autodetect based on Pathway 
AudioPlayer[]song = new AudioPlayer[numberOfSongs];
int currentSong = numberOfSongs - numberOfSongs;  //beginning current song as ZERO
//
void setup()
{
  size(700, 600);
  //
  minim = new Minim(this); //load from data directory, loadFile should also load from project folder
  // Load Music
  String musicPathway = "Music/";
  String mp3FileName = ".mp3";
  String beatYourCompetition = "Beat_Your_Competition";
  String cycles = "Cycles";
  String eureka = "Eureka";
  String GhostWalk = "Ghost_Walk";
  String Groove = "groove";
  String newsroom = "Newsroom";
  String startYourEngine = "Start_Your_Engine";
  String theSimplest  = "The_Simplest";
  //
  //Add Reading Into Array
  song[currentSong] = minim.loadFile( "../../Music/groove.mp3" ); //../../ + musicPathway + groove + mp3FileName 
  song[1].play();
  //song[currentSongs+=1] = minim.loadFile( "../../Music/Cycles.mp3" ); //../../ + musicPathway + Cycles + mp3FileName
  //song[currentSongs+=1] = minim.loadFile( "../../Music/Eureka.mp3" ); //../../ + musicPathway + Eureka + mp3FileName
  //song[currentSongs+=1] = minim.loadFile( "../../Music/Ghost_Walk.mp3" ); //../../ + musicPathway + Ghost_Walk + mp3FileName
  //song[currentSongs+=1] = minim.loadFile( "../../Music/Newsroom.mp3" ); //../../ + musicPathway + Newsroom + mp3FileName
  //song[currentSongs+=1] = minim.loadFile( "../../Music/Start_Your_Engines.mp3" ); //../../ + musicPathway + Start_Your_Engine + mp3FileName
  //song[currentSongs+=1] = minim.loadFile( "../../Music/The_Simplest.mp3" ); //../../ + musicPathway + The_Simplest + mp3FileName
  //song[currentSongs+=1] = minim.loadFile( "../../Music/Beat_Your_Competition.mp3" ); //../../ + musicPathway + Beat_Your_Competition + mp3FileName
  //Add currentSong as hardcoded link
  //Use play(timeStart) & loop(numberOfLoops)
  //Inspect with println
  //Purpose is 2D Shapes
  //Introduce keyPressed as keyboard shortcuts
  //Introduce mousePressed as interaction
  //
  //Future Problem Fixed
  //beatYourCompetition.play();
}//End setup
//
void draw() {
} //End draw
//
void mousePressed() {
} //End mousePressed
//
void keyPressed() {
} //End keyPressed
//
// End Main Program
