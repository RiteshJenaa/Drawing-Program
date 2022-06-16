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
AudioPlayer soundEffect;

color purple = #E60AFF;
PFont titleFont;
float gain = 20.0;

Boolean draw=false, draw1=false, draw2=false, draw3=false, turnONgreen = false, turnONstroke = false, turnONblue=false;
int reset=1;
int squareWidth, squareHeight ;
float drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight, drawingDiameter, drawingDiameter1; 

color resetWhite=#FFFFFF, red=#FF0A03, green=#72F04D, yellow=#ECF04D, black=0, gold= #FFD700, turquoise= #AFEEEE, blue= #005477, orange = #ffa500, gray = #808080, Darkgreen = #528E52, Darkred = #F04430, quitButtonColour, paperButtonColour;
//
float rectXPic1, rectYPic1, rectWidthPic1, rectHeightPic1;
float rectXPic2, rectYPic2, rectWidthPic2, rectHeightPic2;
float rectXPic3, rectYPic3, rectWidthPic3, rectHeightPic3;
float rectXPic4, rectYPic4, rectWidthPic4, rectHeightPic4;
float rectXPic5, rectYPic5, rectWidthPic5, rectHeightPic5;
float rectXPic6, rectYPic6, rectWidthPic6, rectHeightPic6;
float rectXPic7, rectYPic7, rectWidthPic7, rectHeightPic7;
float rectXPic8, rectYPic8, rectWidthPic8, rectHeightPic8;
float rectXPic9, rectYPic9, rectWidthPic9, rectHeightPic9;
float rectXPic10, rectYPic10, rectWidthPic10, rectHeightPic10;
PImage pic1, pic2, pic3, pic4, pic5, pic6, pic7, pic8, pic9, pic10;


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

  soundEffect = minim.loadFile("MusicDownload/Beep.mp3");
  Images();
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
  //
  eraserButton();
  //
  picDraw();
  //

  //Drawing Tools
  fill(resetWhite);
  stroke(black);

  if ( draw==true && mouseX>=drawingSurfaceX && mouseX<=drawingSurfaceX+drawingSurfaceWidth && mouseY>=drawingSurfaceY && mouseY<=drawingSurfaceY+drawingSurfaceHeight) line( mouseX, mouseY, pmouseX, pmouseY );  //End Line Draw
  stroke(red);
  if ( draw1==true && mouseX>=drawingSurfaceX && mouseX<=drawingSurfaceX+drawingSurfaceWidth && mouseY>=drawingSurfaceY && mouseY<=drawingSurfaceY+drawingSurfaceHeight) ellipse( mouseX, mouseY, drawingDiameter, drawingDiameter );
  stroke(green);
  if ( draw2==true && mouseX>=drawingSurfaceX && mouseX<=drawingSurfaceX+drawingSurfaceWidth && mouseY>=drawingSurfaceY && mouseY<=drawingSurfaceY+drawingSurfaceHeight) rect (  mouseX, mouseY, squareWidth, squareHeight );
  noStroke();
  if ( draw3==true && mouseX>=drawingSurfaceX && mouseX<=drawingSurfaceX+drawingSurfaceWidth && mouseY>=drawingSurfaceY && mouseY<=drawingSurfaceY+drawingSurfaceHeight) ellipse ( mouseX, mouseY, drawingDiameter1, drawingDiameter1 );


  //if ( song[currentSong].isLooping() ) println("There are", song[currentSong].loopCount()-1, "loops left.");
  //if ( song[currentSong].isPlaying() && !song[currentSong].isLooping() ) println("Play Once");
  //
  //println("Computer Number of Current Song:", currentSong);
  println("Song Position", song[currentSong].position(), "Song Length", song[currentSong].length() );
  //
  stroke(turquoise);
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
  stroke(turquoise);
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


  if (turnONgreen==true) {

    fill(green);
    stroke(green);
    if (draw==true && mouseX>=drawingSurfaceX && mouseX<=drawingSurfaceX+drawingSurfaceWidth && mouseY>=drawingSurfaceY && mouseY<= drawingSurfaceY+drawingSurfaceHeight)  
      if (draw==true && mouseX>=drawingSurfaceX && mouseX<=drawingSurfaceX+drawingSurfaceWidth && mouseY>=drawingSurfaceY && mouseY<= drawingSurfaceY+drawingSurfaceHeight) line( mouseX, mouseY, pmouseX, pmouseY );
  } //End Line Draw
  //
  if (turnONgreen==true) {

    fill(green);
    if (draw1==true && mouseX>=drawingSurfaceX && mouseX<=drawingSurfaceX+drawingSurfaceWidth && mouseY>=drawingSurfaceY && mouseY<= drawingSurfaceY+drawingSurfaceHeight)  
      if (draw1==true && mouseX>=drawingSurfaceX && mouseX<=drawingSurfaceX+drawingSurfaceWidth && mouseY>=drawingSurfaceY && mouseY<= drawingSurfaceY+drawingSurfaceHeight) ellipse( mouseX, mouseY, drawingDiameter, drawingDiameter );
  }
  if (turnONgreen==true) {

    fill(green);
    if (draw2==true && mouseX>=drawingSurfaceX && mouseX<=drawingSurfaceX+drawingSurfaceWidth && mouseY>=drawingSurfaceY && mouseY<= drawingSurfaceY+drawingSurfaceHeight)  
      if (draw2==true && mouseX>=drawingSurfaceX && mouseX<=drawingSurfaceX+drawingSurfaceWidth && mouseY>=drawingSurfaceY && mouseY<= drawingSurfaceY+drawingSurfaceHeight) rect (  mouseX, mouseY, squareWidth, squareHeight );
  }
  //
  if (mouseX>=greenButtonX && mouseX<=greenButtonX+greenButtonWidth && mouseY>=greenButtonY && mouseY<=greenButtonY+greenButtonHeight) {
    println("Green Button Enabled");
    if (turnONgreen==false) {
      turnONgreen=true;
    } else {
      turnONgreen=false;
    }
  }
  if (mouseX>=greenButtonX && mouseX<=greenButtonX+greenButtonWidth && mouseY>=greenButtonY && mouseY<=greenButtonY+greenButtonHeight) {
    noStroke();
    fill(Darkgreen);
    rect(greenButtonX, greenButtonY, greenButtonWidth, greenButtonHeight);
  } else {

    noStroke();
    fill(green);
    rect(greenButtonX, greenButtonY, greenButtonWidth, greenButtonHeight);
  }
  //
  if (turnONgreen==true) {

    fill(Darkgreen);
    rect(greenButtonX, greenButtonY, greenButtonWidth, greenButtonHeight);
  } else {
    fill(green);
    rect(greenButtonX, greenButtonY, greenButtonWidth, greenButtonHeight);
  }//

  if (turnONstroke==true) {
    fill(green);
    colorMode(green);
    rect(greenButtonX, greenButtonY, greenButtonWidth, greenButtonHeight);
    fill(resetWhite);
  }

  if (turnONgreen==true) {

    fill(Darkgreen);
    rect(greenButtonX, greenButtonY, greenButtonWidth, greenButtonHeight);
  } else {
    fill(green);
    rect(greenButtonX, greenButtonY, greenButtonWidth, greenButtonHeight);
  }//

  //
  //
  //

  if (turnONblue==true) {

    fill(turquoise);
    stroke(turquoise);
    if (draw==true && mouseX>=drawingSurfaceX && mouseX<=drawingSurfaceX+drawingSurfaceWidth && mouseY>=drawingSurfaceY && mouseY<= drawingSurfaceY+drawingSurfaceHeight)  
      if (draw==true && mouseX>=drawingSurfaceX && mouseX<=drawingSurfaceX+drawingSurfaceWidth && mouseY>=drawingSurfaceY && mouseY<= drawingSurfaceY+drawingSurfaceHeight) line( mouseX, mouseY, pmouseX, pmouseY );
  } //End Line Draw
  //
  if (turnONblue==true) {

    fill(turquoise);
    noStroke();
    if (draw1==true && mouseX>=drawingSurfaceX && mouseX<=drawingSurfaceX+drawingSurfaceWidth && mouseY>=drawingSurfaceY && mouseY<= drawingSurfaceY+drawingSurfaceHeight)  
      if (draw1==true && mouseX>=drawingSurfaceX && mouseX<=drawingSurfaceX+drawingSurfaceWidth && mouseY>=drawingSurfaceY && mouseY<= drawingSurfaceY+drawingSurfaceHeight) ellipse( mouseX, mouseY, drawingDiameter, drawingDiameter );
  }
  if (turnONblue==true) {

    fill(turquoise);
    noStroke();
    if (draw2==true && mouseX>=drawingSurfaceX && mouseX<=drawingSurfaceX+drawingSurfaceWidth && mouseY>=drawingSurfaceY && mouseY<= drawingSurfaceY+drawingSurfaceHeight)  
      if (draw2==true && mouseX>=drawingSurfaceX && mouseX<=drawingSurfaceX+drawingSurfaceWidth && mouseY>=drawingSurfaceY && mouseY<= drawingSurfaceY+drawingSurfaceHeight) rect (  mouseX, mouseY, squareWidth, squareHeight );
  }
  //
  if (mouseX>=blueButtonX && mouseX<=blueButtonX+blueButtonWidth && mouseY>=blueButtonY && mouseY<=blueButtonY+blueButtonHeight) {
    println("Blue Button Enabled");
    if (turnONblue==false) {
      turnONblue=true;
    } else {
      turnONblue=false;
    }
  }
  if (mouseX>=blueButtonX && mouseX<=blueButtonX+blueButtonWidth && mouseY>=blueButtonY && mouseY<=blueButtonY+blueButtonHeight) {
    noStroke();
    fill(blue);
    rect(blueButtonX, blueButtonY, blueButtonWidth, blueButtonHeight);
  } else {

    noStroke();
    fill(turquoise);
    rect(blueButtonX, blueButtonY, blueButtonWidth, blueButtonHeight);
  }
  //
  if (turnONblue==true) {

    fill(blue);
    noStroke();
    rect(blueButtonX, blueButtonY, blueButtonWidth, blueButtonHeight);
  } else {
    fill(turquoise);
    rect(blueButtonX, blueButtonY, blueButtonWidth, blueButtonHeight);
  }//

  if (turnONstroke==true) {
    fill(turquoise);
    colorMode(turquoise);
    rect(blueButtonX, blueButtonY, blueButtonWidth, blueButtonHeight);
    fill(resetWhite);
  }

  if (turnONblue==true) {

    fill(blue);
    noStroke();
    rect(blueButtonX, blueButtonY, blueButtonWidth, blueButtonHeight);
  } else {
    fill(turquoise);
    rect(blueButtonX, blueButtonY, blueButtonWidth, blueButtonHeight);
  }//

  //
  //
  //

  if (turnONblue==true) {

    fill(turquoise);
    stroke(turquoise);
    if (draw==true && mouseX>=drawingSurfaceX && mouseX<=drawingSurfaceX+drawingSurfaceWidth && mouseY>=drawingSurfaceY && mouseY<= drawingSurfaceY+drawingSurfaceHeight)  
      if (draw==true && mouseX>=drawingSurfaceX && mouseX<=drawingSurfaceX+drawingSurfaceWidth && mouseY>=drawingSurfaceY && mouseY<= drawingSurfaceY+drawingSurfaceHeight) line( mouseX, mouseY, pmouseX, pmouseY );
  } //End Line Draw
  //
  if (turnONblue==true) {

    fill(turquoise);
    noStroke();
    if (draw1==true && mouseX>=drawingSurfaceX && mouseX<=drawingSurfaceX+drawingSurfaceWidth && mouseY>=drawingSurfaceY && mouseY<= drawingSurfaceY+drawingSurfaceHeight)  
      if (draw1==true && mouseX>=drawingSurfaceX && mouseX<=drawingSurfaceX+drawingSurfaceWidth && mouseY>=drawingSurfaceY && mouseY<= drawingSurfaceY+drawingSurfaceHeight) ellipse( mouseX, mouseY, drawingDiameter, drawingDiameter );
  }
  if (turnONblue==true) {

    fill(turquoise);
    noStroke();
    if (draw2==true && mouseX>=drawingSurfaceX && mouseX<=drawingSurfaceX+drawingSurfaceWidth && mouseY>=drawingSurfaceY && mouseY<= drawingSurfaceY+drawingSurfaceHeight)  
      if (draw2==true && mouseX>=drawingSurfaceX && mouseX<=drawingSurfaceX+drawingSurfaceWidth && mouseY>=drawingSurfaceY && mouseY<= drawingSurfaceY+drawingSurfaceHeight) rect (  mouseX, mouseY, squareWidth, squareHeight );
  }
  //
  if (mouseX>=blueButtonX && mouseX<=blueButtonX+blueButtonWidth && mouseY>=blueButtonY && mouseY<=blueButtonY+blueButtonHeight) {
    println("Blue Button Enabled");
    if (turnONblue==false) {
      turnONblue=true;
    } else {
      turnONblue=false;
    }
  }
  if (mouseX>=blueButtonX && mouseX<=blueButtonX+blueButtonWidth && mouseY>=blueButtonY && mouseY<=blueButtonY+blueButtonHeight) {
    noStroke();
    fill(blue);
    rect(blueButtonX, blueButtonY, blueButtonWidth, blueButtonHeight);
  } else {

    noStroke();
    fill(turquoise);
    rect(blueButtonX, blueButtonY, blueButtonWidth, blueButtonHeight);
  }
  //
  if (turnONblue==true) {

    fill(blue);
    noStroke();
    rect(blueButtonX, blueButtonY, blueButtonWidth, blueButtonHeight);
  } else {
    fill(turquoise);
    rect(blueButtonX, blueButtonY, blueButtonWidth, blueButtonHeight);
  }//

  if (turnONstroke==true) {
    fill(turquoise);
    colorMode(turquoise);
    rect(blueButtonX, blueButtonY, blueButtonWidth, blueButtonHeight);
    fill(resetWhite);
  }

  if (turnONblue==true) {

    fill(blue);
    noStroke();
    rect(blueButtonX, blueButtonY, blueButtonWidth, blueButtonHeight);
  } else {
    fill(turquoise);
    rect(blueButtonX, blueButtonY, blueButtonWidth, blueButtonHeight);
  }//
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
}//End keyPressed

void mousePressed()
{
  //Paper-Button
  if ( mouseX>=drawingSurfaceX && mouseX<=drawingSurfaceX+drawingSurfaceWidth && mouseY>=drawingSurfaceY && mouseY<=drawingSurfaceY+drawingSurfaceHeight ) {
    if (draw == false) {
      draw = true;
    } else {
      draw = false;
    }//End draw Boolean
  }
  soundEffect.pause();
  soundEffect.rewind();
  soundEffect.play();//Button Paper (Drawing Surface)

  //

  if ( mouseX>=quitButtonX && mouseX<=quitButtonX+quitButtonWidth && mouseY>=quitButtonY && mouseY<=quitButtonY+quitButtonHeight ) exit();     
  soundEffect.pause();
  soundEffect.rewind();
  soundEffect.play();
  if ( mouseX>=paperButtonX && mouseX<=paperButtonX+paperButtonWidth && mouseY>=paperButtonY && mouseY<=paperButtonY+paperButtonHeight ) paper=true;
  soundEffect.pause();
  soundEffect.rewind();
  soundEffect.play();

  if ( draw=true && mouseX>=lineButtonX && mouseX<=lineButtonX+lineButtonWidth && mouseY>=lineButtonY && mouseY<=lineButtonY+lineButtonHeight ) line( mouseX, mouseY, pmouseX, pmouseY ); 
  soundEffect.pause();
  soundEffect.rewind();
  soundEffect.play();
  if ( draw1=true && mouseX>=ellipseButtonX && mouseX<=ellipseButtonX+ellipseButtonWidth && mouseY>=ellipseButtonY && mouseY<=ellipseButtonY+ellipseButtonHeight ) ellipse( mouseX, mouseY, drawingDiameter, drawingDiameter );
  soundEffect.pause();
  soundEffect.rewind();
  soundEffect.play();
  if ( draw2=true && mouseX>=squareButtonX && mouseX<=squareButtonX+squareButtonWidth && mouseY>=squareButtonY && mouseY<=squareButtonY+squareButtonHeight ) rect (  mouseX, mouseY, squareWidth, squareHeight );
  soundEffect.pause();
  soundEffect.rewind();
  soundEffect.play();
  if ( draw3=true && mouseX>=eraserButtonX && mouseX<=eraserButtonX+eraserButtonWidth && mouseY>=eraserButtonY && mouseY<=eraserButtonY+eraserButtonHeight) ellipse ( mouseX, mouseY, drawingDiameter1, drawingDiameter1 );
  soundEffect.pause();
  soundEffect.rewind();
  soundEffect.play();
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
  }
  soundEffect.pause();
  soundEffect.rewind();
  soundEffect.play();
  //End Play-Paused button

  if ( mouseX>=reverseButtonX && mouseX<=reverseButtonX+reverseButtonWidth && mouseY>=reverseButtonY && mouseY<=reverseButtonY+reverseButtonHeight ) song[currentSong].skip(-1000);
  soundEffect.pause();
  soundEffect.rewind();
  soundEffect.play();
  if ( mouseX>=forwardButtonX && mouseX<=forwardButtonX+forwardButtonWidth && mouseY>=forwardButtonY && mouseY<=forwardButtonY+forwardButtonHeight ) song[currentSong].skip(1000);
  soundEffect.pause();
  soundEffect.rewind();
  soundEffect.play();

  if ( mouseX>=muteButtonX && mouseX<=muteButtonX+muteButtonWidth && mouseY>=muteButtonY && mouseY<=muteButtonY+muteButtonHeight ) { //Mute
    if ( song[currentSong].isMuted() ) {
      song[currentSong].unmute();
    } else {
      song[currentSong].mute();
    }
  }
  soundEffect.pause();
  soundEffect.rewind();
  soundEffect.play();
  //End Mute

  if ( mouseX>=stopButtonX && mouseX<=stopButtonX+stopButtonWidth && mouseY>=stopButtonY && mouseY<=stopButtonY+stopButtonHeight ) {    
    if ( song[currentSong].isPlaying() ) {
      song[currentSong].pause();
      song[currentSong].rewind();
    } else {
      song[currentSong].rewind();
    }
  }
  soundEffect.pause();
  soundEffect.rewind();
  soundEffect.play();
  //End STOP button

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
  }
  soundEffect.pause();
  soundEffect.rewind();
  soundEffect.play();
  //End Next Button

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
  } 
  soundEffect.pause();
  soundEffect.rewind();
  soundEffect.play();
  //End Back Button

  if ( mouseX>=skipButtonX && mouseX<=skipButtonX+skipButtonWidth && mouseY>=skipButtonY && mouseY<=skipButtonY+skipButtonHeight ) previousSong(); 
  soundEffect.pause();
  soundEffect.rewind();
  soundEffect.play();
  //End Song Skip Button 

  if ( mouseX>=amplifyButtonX && mouseX<=amplifyButtonX+amplifyButtonWidth && mouseY>=amplifyButtonY && mouseY<=amplifyButtonY+amplifyButtonHeight ) {
    println("Gain is", song[currentSong].getGain());
    gain = gain+song[currentSong].getGain();
    song[currentSong].setGain(gain);
    soundEffect.pause();
    soundEffect.rewind();
    soundEffect.play();
  }
  //End Amplify Button
}//End mousepressed

//

//End Main Program
