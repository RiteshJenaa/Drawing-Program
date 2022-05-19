//Global vairables  //<>//
Boolean draw=false;
int reset=1;
color resetWhite=#FFFFFF, red=#FF0A03, green=#72F04D, yellow=#ECF04D, black=0, quitButtonColour, resetButtonColour, paperButtonColour;
//
void setup()
{
  //Mandatory: Mistaken display orientation should break app, feedback to console and CANVAS
  fullScreen();
  //
  population();
  //
  textSetup();
  Paper();
}
//End setup

void draw()
{
  //
  if ( paper==true ) Paper();

  //Drawing Tools
  fill(resetWhite);
  if ( draw==true && mouseX>=drawingSurfaceX && mouseX<=drawingSurfaceX+drawingSurfaceWidth && mouseY>=drawingSurfaceY && mouseY<=drawingSurfaceY+drawingSurfaceHeight) line( mouseX, mouseY, pmouseX, pmouseY );  //End Line Draw
  if ( draw==true && mouseX>=drawingSurfaceX && mouseX<=drawingSurfaceX+drawingSurfaceWidth && mouseY>=drawingSurfaceY && mouseY<=drawingSurfaceY+drawingSurfaceHeight) ellipse( mouseX, mouseY, drawingDiameter, drawingDiameter ); //Circle
  //
  QuitButton();
  //
  PaperButton();
  //
  //
  ResetButton();
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
  if ( mouseX>=paperButtonX && mouseX<=paperButtonX+paperButtonWidth && mouseY>=paperButtonY && mouseY<=paperButtonY+paperButtonHeight ) paper=true;
  //
  if ( mouseX>=resetButtonX && mouseX<=resetButtonX+resetButtonWidth && mouseY>=resetButtonY && mouseY<=resetButtonY+resetButtonHeight ) draw=false;
}//End mousepressed

//

//End Main Program
