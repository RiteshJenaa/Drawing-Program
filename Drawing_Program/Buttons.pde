//Global Variables
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
float ellipseButtonX, ellipseButtonY, ellipseButtonWidth, ellipseButtonHeight;
float lineButtonX, lineButtonY, lineButtonWidth, lineButtonHeight;
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
  if ( mouseX>=paperButtonX && mouseX<=paperButtonX+paperButtonWidth && mouseY>=paperButtonY && mouseY<=paperButtonY+paperButtonHeight ) {
    stroke(turquoise);
    fill(yellow);
    rect(paperButtonX, paperButtonY, paperButtonWidth, paperButtonHeight);
    fill(resetWhite);
    textAlign(CENTER, CENTER);
    textFont(font, size);
    text(paperButtonText, paperButtonX, paperButtonY, paperButtonWidth, paperButtonHeight);
    
  } else {
    
    stroke(green);
    fill(resetWhite);
    rect(paperButtonX, paperButtonY, paperButtonWidth, paperButtonHeight);
    fill(black);
    textAlign(CENTER, CENTER);
    textFont(font, size);
    text(paperButtonText, paperButtonX, paperButtonY, paperButtonWidth, paperButtonHeight);
  }
  fill(resetWhite);
}
//End PaperButton

//

void EllipseTool()
{
  if ( mouseX>=ellipseButtonX && mouseX<=ellipseButtonX+ellipseButtonWidth && mouseY>=ellipseButtonY && mouseY<=ellipseButtonY+ellipseButtonHeight ) {
    stroke(turquoise);
    fill(blue);
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

//

void LineTool()
{
  if ( mouseX>=lineButtonX && mouseX<=lineButtonX+lineButtonWidth && mouseY>=lineButtonY && mouseY<=lineButtonY+lineButtonHeight ) {
    stroke(turquoise);
    fill(blue);
    rect(lineButtonX, lineButtonY, lineButtonWidth, lineButtonHeight);
    fill(resetWhite);
    textAlign(CENTER, CENTER);
    textFont(font, size);
    text(lineButtonText, lineButtonX, lineButtonY, lineButtonWidth, lineButtonHeight);
    
  } else {
    
    stroke(green);
    fill(resetWhite);
    rect(lineButtonX, lineButtonY, lineButtonWidth, lineButtonHeight);
    fill(black);
    textAlign(CENTER, CENTER);
    textFont(font, size);
    text(lineButtonText, lineButtonX, lineButtonY, lineButtonWidth, lineButtonHeight);
  }
  fill(resetWhite);
}
//End EllipseTool
