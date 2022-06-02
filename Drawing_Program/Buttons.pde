//Global Variables
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
float ellipseButtonX, ellipseButtonY, ellipseButtonWidth, ellipseButtonHeight;
float lineButtonX, lineButtonY, lineButtonWidth, lineButtonHeight;
float colorButtonX, colorButtonY, colorButtonWidth, colorButtonHeight;
float greenButtonX, greenButtonY, greenButtonWidth, greenButtonHeight;
float blueButtonX, blueButtonY, blueButtonWidth, blueButtonHeight;
float redButtonX, redButtonY, redButtonWidth, redButtonHeight;
float yellowButtonX, yellowButtonY, yellowButtonWidth, yellowButtonHeight;
float orangeButtonX, orangeButtonY, orangeButtonWidth, orangeButtonHeight;
float whiteButtonX, whiteButtonY, whiteButtonWidth, whiteButtonHeight;
float grayButtonX, grayButtonY, grayButtonWidth, grayButtonHeight;
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

void colorSetup()
{
  if (colorButton == true) {
    noStroke();
    rect(drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight);

    fill(green);
    rect( greenButtonX, greenButtonY, greenButtonWidth, greenButtonHeight ); 

    fill(blue);
    rect(blueButtonX, blueButtonY, blueButtonWidth, blueButtonHeight); 

    fill(red);
    rect(redButtonX, redButtonY, redButtonWidth, redButtonHeight); 

    fill(yellow);
    rect(yellowButtonX, yellowButtonY, yellowButtonWidth, yellowButtonHeight); 

    fill(orange);
    rect(orangeButtonX, orangeButtonY, orangeButtonWidth, orangeButtonHeight); 

    fill(resetWhite);
    rect(whiteButtonX, whiteButtonY, whiteButtonWidth, whiteButtonHeight); 

    fill(gray);
    rect(grayButtonX, grayButtonY, grayButtonWidth, grayButtonHeight);
  }
}
//End ColorButton

//

void greenButton() {
  if ( colorButton == true && mouseX>=greenButtonX && mouseX<=greenButtonX+greenButtonWidth && mouseY>=greenButtonY && mouseY<=greenButtonY+greenButtonHeight )
  fill(red);
  rect(drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight);
}//End greenButton

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

//

//Colour selector
