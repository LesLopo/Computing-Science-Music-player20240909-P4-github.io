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
int currentSong = numberOfSongs - numberOfSongs; //beginning current song as ZERO
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
