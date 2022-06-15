 //<>//
//Libraries: uses Sketch / Import Library / Add Library / Minim
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//Global Variables
Minim minim; //object to access all music player fuctions
int numberOfSongs = 4;
AudioPlayer[] song = new AudioPlayer[numberOfSongs]; //WAV, AIFF, AU, SND, & MP3
AudioMetaData[] songMetaData = new AudioMetaData[numberOfSongs]; //meta data
int currentSong = numberOfSongs - numberOfSongs;

color purple = #E60AFF;
PFont titleFont;
float gain = 20.0;

Boolean draw=false, draw1=false, draw2=false, colorButton=false;
int reset=1;
int squareWidth, squareHeight ;
float drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight, drawingDiameter; 

color resetWhite=#FFFFFF, red=#FF0A03, green=#72F04D, yellow=#ECF04D, black=0, gold= #FFD700, turquoise= #AFEEEE, blue= #005477, orange = #ffa500, gray = #808080, quitButtonColour, paperButtonColour;
//
void setup()
{
  //Mandatory: Mistaken display orientation should break app, feedback to console and CANVAS
  fullScreen();
  //
  population();
  //
  textSetup();
  //
  Paper();
  //
  minim = new Minim(this); //loads from data directory, loads from project folder
  song[currentSong] = minim.loadFile("MusicDownload/Beat_Your_Competition.mp3"); //albe to pass absulute path, file name & extension, and URL
  song[currentSong+=1] = minim.loadFile("MusicDownload/Ghost_Walk.mp3");
  song[currentSong+=1] = minim.loadFile("MusicDownload/The_Simplest.mp3");
  song[currentSong+=1] = minim.loadFile("MusicDownload/MusicProgram_MusicDownload_groove.mp3");
  //
  currentSong-=currentSong; //currentSong = currentSong - currentSong
  for ( int i=currentSong; i<song.length; i++ ) {
    songMetaData[i] = song[i].getMetaData();
  }//End Meta Data

  //songMetaData[0] = song[0].getMetaData();
  //songMetaData[1] = song[1].getMetaData();
  //songMetaData[2] = song[2].getMetaData();
  //
  titleFont = createFont( "Arial", 35 );
  //
  println("Start of Console");
  println("Click the console to finish starting this program");
  println("Title:", songMetaData[currentSong].title() );
  println( "Author: ", songMetaData[currentSong].author() ); 
  println( "Album: ", songMetaData[currentSong].album() );
  println( "Genre: ", songMetaData[currentSong].genre() );
}
//End setup

void draw()
{
  //
  if ( paper==true ) Paper();
  //
  QuitButton();
  //
  PaperButton();
  //
  EllipseTool();
  //
  LineTool();
  //
  SquareTool();
  //
  playButton();
  //
  forwardButton();
  //
  reverseButton();
  //
  muteButton();
  //
  stopButton();
  //
  loopButton();
  //
  nextButton();
  //
  backButton();
  //
  previousButton();
  //
  amplifyButton();

  //Drawing Tools
  fill(resetWhite);
  if ( draw==true && mouseX>=drawingSurfaceX && mouseX<=drawingSurfaceX+drawingSurfaceWidth && mouseY>=drawingSurfaceY && mouseY<=drawingSurfaceY+drawingSurfaceHeight) line( mouseX, mouseY, pmouseX, pmouseY );  //End Line Draw
  if ( draw1==true && mouseX>=drawingSurfaceX && mouseX<=drawingSurfaceX+drawingSurfaceWidth && mouseY>=drawingSurfaceY && mouseY<=drawingSurfaceY+drawingSurfaceHeight) ellipse( mouseX, mouseY, drawingDiameter, drawingDiameter );
  if ( draw2==true && mouseX>=drawingSurfaceX && mouseX<=drawingSurfaceX+drawingSurfaceWidth && mouseY>=drawingSurfaceY && mouseY<=drawingSurfaceY+drawingSurfaceHeight) rect (  mouseX, mouseY, squareWidth, squareHeight );
  //

  //if ( song[currentSong].isLooping() ) println("There are", song[currentSong].loopCount()-1, "loops left.");
  //if ( song[currentSong].isPlaying() && !song[currentSong].isLooping() ) println("Play Once");
  //
  //println("Computer Number of Current Song:", currentSong);
  println("Song Position", song[currentSong].position(), "Song Length", song[currentSong].length() );
  //
  rect(displayWidth*4/5, displayHeight*3/5, displayWidth*1/5, displayHeight*1/20);
  fill(purple);
  textAlign (CENTER, CENTER); 
  textFont(titleFont, 20); 
  text(songMetaData[currentSong].title(), displayWidth*4/5, displayHeight*3/5, displayWidth*1/5, displayHeight*1/20);
  fill(255);
  //
  //
  rect(displayWidth*4/5, displayHeight*3.3/5, displayWidth*1/5, displayHeight*1/20);
  fill(purple);
  textAlign (CENTER, CENTER); 
  textFont(titleFont, 20); 
  text(songMetaData[currentSong].author(), displayWidth*4/5, displayHeight*3.3/5, displayWidth*1/5, displayHeight*1/20);
  fill(255);
  //
  rect(displayWidth*4/5, displayHeight*3.6/5, displayWidth*1/5, displayHeight*1/20);
  fill(purple);
  textAlign (CENTER, CENTER); 
  textFont(titleFont, 20); 
  text(songMetaData[currentSong].genre(), displayWidth*4/5, displayHeight*3.6/5, displayWidth*1/5, displayHeight*1/20);
  fill(255);
  //
  rect(displayWidth*4/5, displayHeight*3.9/5, displayWidth*1/5, displayHeight*1/20);
  fill(purple);
  textAlign (CENTER, CENTER); 
  textFont(titleFont, 20); 
  text(songMetaData[currentSong].album(), displayWidth*4/5, displayHeight*3.9/5, displayWidth*1/5, displayHeight*1/20);
  fill(255);
  //
  //Visualizer
  fill(#000000);
  rect(displayWidth*0/5, displayHeight*0/5, displayWidth*1/6, displayHeight*1/6);
  for (int i = 0; i < song[currentSong].bufferSize() - 1; i++)
  {
    float x1 = map( i, 0, song[currentSong].bufferSize(), 100, 250 );
    float x2 = map( i+1, 0, song[currentSong].bufferSize(), 100, 250 );
    line( x1, 50 + song[currentSong].left.get(i)*30, x2, 50 + song[currentSong].left.get(i+1)*30 );
    line( x2, 150 + song[currentSong].right.get(i)*30, x2, 150 + song[currentSong].right.get(i+1)*30 );
  }

  //Draw a line to show where in the song playback is currently located
  float posx = map(song[currentSong].position(), 0, song[currentSong].length(), 50, 250);
  stroke(0, 200, 0);
  line(posx, 0, posx, 180);
  //End visualizer
}
//End draw

void keyPressed()
{
  //Only press a number for this code below
  if ( key=='1' || key=='9' ) {//Looping
    if ( key == '1' ) println ("Looping 1 time");
    if ( key == '9' ) println ("Looping 9 times");
    String keystr = String.valueOf(key);
    println("Number of Repeats is", keystr);
    int num = int(keystr);
    song[currentSong].loop(num);
  }//End loop


  //Play-Paused button
  if ( key=='l' || key=='L') song[currentSong].loop();
  if ( key>='4' && key!='9') println("I do not loop that much! Try again.");
  //
  if ( key=='p' || key=='P' ) { 
    if ( song[currentSong].isPlaying() ) {
      song[currentSong].pause();
    } else if ( song[currentSong].position() >= song[currentSong].length() - song[currentSong].length()*1/6 ) { //Special situation
      song[currentSong].rewind();
      song[currentSong].play();
    } else {
      song[currentSong].play();
    }
  }//End Play-Paused button

  if ( key=='f' || key=='F' ) song[currentSong].skip(1000); //skip forward
  if ( key=='r' || key=='R' ) song[currentSong].skip(-1000); //skip backward

  //

  if ( key=='m' || key=='M' ) { //Mute
    if ( song[currentSong].isMuted() ) {
      song[currentSong].unmute();
    } else {
      song[currentSong].mute();
    }
  }//End Mute

  //STOP
  if ( key=='s' || key=='S' ) {
    if ( song[currentSong].isPlaying() ) {
      song[currentSong].pause();
      song[currentSong].rewind();
    } else {
      song[currentSong].rewind();
    }
  }//End STOP button

  //

  if ( key=='n' || key=='N' ) {//Next Button
    if ( song [currentSong].isPlaying() ) {
      song[currentSong].pause();
      song[currentSong].rewind();
      nextButtonArrayCatch();
      song[currentSong].play();
    } else {
      song[currentSong].rewind();
      nextButtonArrayCatch();
      song[currentSong].play();
    }
  }//End Next Button

  if (  key=='z' || key=='Z' ) {
    if ( song [currentSong].isPlaying() ) {
      song[currentSong].pause();
      song[currentSong].rewind();
      backButtonArrayCatch();
      song[currentSong].play();
    } else {
      song[currentSong].rewind();
      backButtonArrayCatch();
      song[currentSong].play();
    }
  } //End Back Button

  if (  key=='d' || key=='D' ) {
    println("Gain is", song[currentSong].getGain());
    gain = gain+song[currentSong].getGain();
    song[currentSong].setGain(gain);
  }
  //End Amplify Button


  if (  key=='a' || key=='A' ) AutoPlay(); //End AutoPlay Button 

  if (  key=='f' || key=='F' ) previousButton(); //End Song Skip Button 
  //Note it sometimes works
}
//End keyPressed

void mousePressed()
{
  //Paper-Button
  if ( mouseX>=drawingSurfaceX && mouseX<=drawingSurfaceX+drawingSurfaceWidth && mouseY>=drawingSurfaceY && mouseY<=drawingSurfaceY+drawingSurfaceHeight ) {
    if (draw == false) {
      draw = true;
    } else {
      draw = false;
    }//End draw Boolean
  }//Button Paper (Drawing Surface)

  //

  if ( mouseX>=quitButtonX && mouseX<=quitButtonX+quitButtonWidth && mouseY>=quitButtonY && mouseY<=quitButtonY+quitButtonHeight ) exit();
  if ( mouseX>=paperButtonX && mouseX<=paperButtonX+paperButtonWidth && mouseY>=paperButtonY && mouseY<=paperButtonY+paperButtonHeight ) paper=true;


  if ( draw=true && mouseX>=lineButtonX && mouseX<=lineButtonX+lineButtonWidth && mouseY>=lineButtonY && mouseY<=lineButtonY+lineButtonHeight ) line( mouseX, mouseY, pmouseX, pmouseY ); 
  if ( draw1=true && mouseX>=ellipseButtonX && mouseX<=ellipseButtonX+ellipseButtonWidth && mouseY>=ellipseButtonY && mouseY<=ellipseButtonY+ellipseButtonHeight ) ellipse( mouseX, mouseY, drawingDiameter, drawingDiameter );
  if ( draw2=true && mouseX>=squareButtonX && mouseX<=squareButtonX+squareButtonWidth && mouseY>=squareButtonY && mouseY<=squareButtonY+squareButtonHeight ) rect (  mouseX, mouseY, squareWidth, squareHeight );
  //
  if ( mouseX>=playButtonX && mouseX<=playButtonX+playButtonWidth && mouseY>=playButtonY && mouseY<=playButtonY+playButtonHeight ) {     
    if ( song[currentSong].isPlaying() ) {
      song[currentSong].pause();
    } else if ( song[currentSong].position() >= song[currentSong].length() - song[currentSong].length()*1/6 ) { //Special situation
      song[currentSong].rewind();
      song[currentSong].play();
    } else {
      song[currentSong].play();
    }
  }//End Play-Paused button

  if ( mouseX>=reverseButtonX && mouseX<=reverseButtonX+reverseButtonWidth && mouseY>=reverseButtonY && mouseY<=reverseButtonY+reverseButtonHeight ) song[currentSong].skip(-1000);
  if ( mouseX>=forwardButtonX && mouseX<=forwardButtonX+forwardButtonWidth && mouseY>=forwardButtonY && mouseY<=forwardButtonY+forwardButtonHeight ) song[currentSong].skip(1000);

  if ( mouseX>=muteButtonX && mouseX<=muteButtonX+muteButtonWidth && mouseY>=muteButtonY && mouseY<=muteButtonY+muteButtonHeight ) { //Mute
    if ( song[currentSong].isMuted() ) {
      song[currentSong].unmute();
    } else {
      song[currentSong].mute();
    }
  }//End Mute

  if ( mouseX>=stopButtonX && mouseX<=stopButtonX+stopButtonWidth && mouseY>=stopButtonY && mouseY<=stopButtonY+stopButtonHeight ) {    
    if ( song[currentSong].isPlaying() ) {
      song[currentSong].pause();
      song[currentSong].rewind();
    } else {
      song[currentSong].rewind();
    }
  }//End STOP button

  if ( mouseX>=loopButtonX && mouseX<=loopButtonX+loopButtonWidth && mouseY>=loopButtonY && mouseY<=loopButtonY+loopButtonHeight ) song[currentSong].loop();
  if ( mouseX>=nextButtonX && mouseX<=nextButtonX+nextButtonWidth && mouseY>=nextButtonY && mouseY<=nextButtonY+nextButtonHeight ) {
    if ( song [currentSong].isPlaying() ) {
      song[currentSong].pause();
      song[currentSong].rewind();
      nextButtonArrayCatch();
      song[currentSong].play();
    } else {
      song[currentSong].rewind();
      nextButtonArrayCatch();
      song[currentSong].play();
    }
  }//End Next Button

  if ( mouseX>=backButtonX && mouseX<=backButtonX+backButtonWidth && mouseY>=backButtonY && mouseY<=backButtonY+backButtonHeight ) {
    if ( song [currentSong].isPlaying() ) {
      song[currentSong].pause();
      song[currentSong].rewind();
      backButtonArrayCatch();
      song[currentSong].play();
    } else {
      song[currentSong].rewind();
      backButtonArrayCatch();
      song[currentSong].play();
    }
  } //End Back Button

  if ( mouseX>=skipButtonX && mouseX<=skipButtonX+skipButtonWidth && mouseY>=skipButtonY && mouseY<=skipButtonY+skipButtonHeight ) previousSong(); //End Song Skip Button 

  if ( mouseX>=amplifyButtonX && mouseX<=amplifyButtonX+amplifyButtonWidth && mouseY>=amplifyButtonY && mouseY<=amplifyButtonY+amplifyButtonHeight ) {
    println("Gain is", song[currentSong].getGain());
    gain = gain+song[currentSong].getGain();
    song[currentSong].setGain(gain);
  }
  //End Amplify Button
}//End mousepressed

void mouseClicked()
{
}
//End mouseClicked

//

//End Main Program
