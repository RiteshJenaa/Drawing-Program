//Global vairables //<>// //<>// //<>//
Boolean draw=false;
float drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight, drawingDiameter; 
float secondButtonX, secondButtonY, secondButtonHeight, secondButtonWidth;
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
int reset=1;
color resetWhite=#FFFFFF, red=#FF0A03, green=#72F04D, yellow=#ECF04D, black=0, quitButtonColour, secondButtonColour;
PFont font;
int initialFontSize=55, size;
String quitButtonText = "QUIT";
String SecondButtonText = "RESET!";
//
void setup()
{
  //Mandatory: Mistaken display orientation should break app, feedback to console and CANVAS
  fullScreen();
  //
  population();
  //
  rect(drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight);
}

//End setup

void draw()
{
  //Drawing Tools
  fill(resetWhite);
  if ( draw==true && mouseX>=drawingSurfaceX && mouseX<=drawingSurfaceX+drawingSurfaceWidth && mouseY>=drawingSurfaceY && mouseY<=drawingSurfaceY+drawingSurfaceHeight) line( mouseX, mouseY, pmouseX, pmouseY );  //End Line Draw
  if ( draw==true && mouseX>=drawingSurfaceX && mouseX<=drawingSurfaceX+drawingSurfaceWidth && mouseY>=drawingSurfaceY && mouseY<=drawingSurfaceY+drawingSurfaceHeight) ellipse( mouseX, mouseY, drawingDiameter, drawingDiameter ); //Circle
  //
  //QuitButton Hoverover
  if ( mouseX>=quitButtonX && mouseX<=quitButtonX+quitButtonWidth && mouseY>=quitButtonY && mouseY<=quitButtonY+quitButtonHeight ) {
    quitButtonColour = red;
  } else {
    quitButtonColour = resetWhite;
  }//End QuitButton Hoverover

  //

  fill(quitButtonColour);
  stroke(green);
  rect(quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight); 
  stroke(reset);
  fill(resetWhite); //White

  //Text QuitButton
  fill(black); //INK
  textAlign(CENTER, CENTER);
  size = 25;
  textFont(font, size);
  text(quitButtonText, quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);

  //

  //Second Rect
  //Second Button Hoverover
  if ( mouseX>=secondButtonX && mouseX<=secondButtonX+secondButtonWidth && mouseY>=secondButtonY && mouseY<=secondButtonY+secondButtonHeight ) {
    secondButtonColour = yellow;
  } else {
    secondButtonColour = resetWhite;
  }//End Second Button Hoverover

  //

  fill(secondButtonColour);
  stroke(green);
  rect( secondButtonX, secondButtonY, secondButtonHeight, secondButtonWidth );
  stroke(reset);
  fill(resetWhite); //White

  //Text SecondButton
  fill(black); //INK
  textAlign(CENTER, CENTER);
  size = 25;
  textFont(font, size);
  text(SecondButtonText, secondButtonX, secondButtonY, secondButtonHeight, secondButtonWidth);
}
//End draw

void keyPressed()
{
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
}//End mousepressed

//

//End Main Program
