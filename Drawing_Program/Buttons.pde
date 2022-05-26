//Global Variables
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
float ellipseButtonX, ellipseButtonY, ellipseButtonWidth, ellipseButtonHeight;
//

void QuitButton() 
{
  
  //Hoverover with text
  
  if ( mouseX>=quitButtonX && mouseX<=quitButtonX+quitButtonWidth && mouseY>=quitButtonY && mouseY<=quitButtonY+quitButtonHeight ) {
    stroke(turquoise);
    fill(red);
    rect(quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
    fill(resetWhite);
    textAlign(CENTER, CENTER);
    textFont(font, size);
    text(quitButtonText, quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
    
  } else {
    
    stroke(green);
    fill(resetWhite);
    rect(quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
    fill(black);
    textAlign(CENTER, CENTER);
    textFont(font, size);
    text(quitButtonText, quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
  }
  fill(resetWhite);
}
//End QuitButton

//

void PaperButton()
{
  //Paper Rect
  //Paper Button Hoverover
  if ( mouseX>=paperButtonX && mouseX<=paperButtonX+paperButtonWidth && mouseY>=paperButtonY && mouseY<=paperButtonY+paperButtonHeight ) {
    paperButtonColour = yellow;
  } else {
    paperButtonColour = resetWhite;
  }//End Paper Button Hoverover

  //

  fill(paperButtonColour);
  stroke(green);
  rect(paperButtonX, paperButtonY, paperButtonHeight, paperButtonWidth);
  stroke(reset);
  fill(resetWhite); //White

  //Text Paper Button
  fill(black); //INK
  textAlign(CENTER, CENTER);
  textFont(font, size);
  text(paperButtonText, paperButtonX, paperButtonY, paperButtonHeight, paperButtonWidth);
}
//End PaperButton

//

void EllipseTool()
{
  if ( mouseX>=ellipseButtonX && mouseX<=ellipseButtonX+ellipseButtonWidth && mouseY>=ellipseButtonY && mouseY<=ellipseButtonY+ellipseButtonHeight ) {
    stroke(turquoise);
    fill(red);
    rect(ellipseButtonX, ellipseButtonY, ellipseButtonWidth, ellipseButtonHeight);
    fill(resetWhite);
    textAlign(CENTER, CENTER);
    textFont(font, size);
    text(ellipseButtonText, ellipseButtonX, ellipseButtonY, ellipseButtonWidth, ellipseButtonHeight);
    
  } else {
    
    stroke(green);
    fill(resetWhite);
    rect(ellipseButtonX, ellipseButtonY, ellipseButtonWidth, ellipseButtonHeight);
    fill(black);
    textAlign(CENTER, CENTER);
    textFont(font, size);
    text(ellipseButtonText, ellipseButtonX, ellipseButtonY, ellipseButtonWidth, ellipseButtonHeight);
  }
  fill(resetWhite);
}
//End EllipseTool
