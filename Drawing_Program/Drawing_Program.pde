//Global vairables //<>// //<>// //<>//
Boolean draw=false;
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
float resetButtonX, resetButtonY, resetButtonHeight, resetButtonWidth;
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
  
  //Paper Rect
  //Paper Button Hoverover
  if ( mouseX>=paperButtonX && mouseX<=paperButtonX+paperButtonWidth && mouseY>=paperButtonY && mouseY<=paperButtonY+resetButtonHeight ) {
    paperButtonColour = yellow;
  } else {
    paperButtonColour = resetWhite;
  }//End Second Button Hoverover

  //

  fill(resetButtonColour);
  stroke(green);
  rect(paperButtonX, paperButtonY, paperButtonHeight, paperButtonWidth);
  stroke(reset);
  fill(resetWhite); //White

  //Text Paper Button
  fill(black); //INK
  textAlign(CENTER, CENTER);
  size = 25;
  textFont(font, size);
  text(paperButtonText, paperButtonX, paperButtonY, paperButtonHeight, paperButtonWidth);

  //

  //Reset Rect
  //Reset Button Hoverover
  if ( mouseX>=resetButtonX && mouseX<=resetButtonX+resetButtonWidth && mouseY>=resetButtonY && mouseY<=resetButtonY+resetButtonHeight ) {
    resetButtonColour = yellow;
  } else {
    resetButtonColour = resetWhite;
  }//End Second Button Hoverover

  //

  fill(resetButtonColour);
  stroke(green);
  rect(resetButtonX, resetButtonY, resetButtonHeight, resetButtonWidth);
  stroke(reset);
  fill(resetWhite); //White

  //Text Reset Button
  fill(black); //INK
  textAlign(CENTER, CENTER);
  size = 25;
  textFont(font, size);
  text(resetButtonText, resetButtonX, resetButtonY, resetButtonHeight, resetButtonWidth);

  //
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
