//Global Variables
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
float ellipseButtonX, ellipseButtonY, ellipseButtonWidth, ellipseButtonHeight;
float lineButtonX, lineButtonY, lineButtonWidth, lineButtonHeight;
float squareButtonX, squareButtonY, squareButtonWidth, squareButtonHeight;
float playButtonX, playButtonY, playButtonWidth, playButtonHeight;
float reverseButtonX, reverseButtonY, reverseButtonWidth, reverseButtonHeight;
float forwardButtonX, forwardButtonY, forwardButtonWidth, forwardButtonHeight;
float muteButtonX, muteButtonY, muteButtonWidth, muteButtonHeight;
float stopButtonX, stopButtonY, stopButtonWidth, stopButtonHeight;
float loopButtonX, loopButtonY, loopButtonWidth, loopButtonHeight;
float nextButtonX, nextButtonY, nextButtonWidth, nextButtonHeight;
float backButtonX, backButtonY, backButtonWidth, backButtonHeight;
float skipButtonX, skipButtonY, skipButtonWidth, skipButtonHeight;
float amplifyButtonX, amplifyButtonY, amplifyButtonWidth, amplifyButtonHeight;
float eraserButtonX, eraserButtonY, eraserButtonWidth, eraserButtonHeight;
//
float colorButtonX, colorButtonY, colorButtonWidth, colorButtonHeight;
float greenButtonX, greenButtonY, greenButtonWidth, greenButtonHeight;
float blueButtonX, blueButtonY, blueButtonWidth, blueButtonHeight;
float redButtonX, redButtonY, redButtonWidth, redButtonHeight;
float whiteButtonX, whiteButtonY, whiteButtonWidth, whiteButtonHeight;

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

void SquareTool()
{
  if ( mouseX>=squareButtonX && mouseX<=squareButtonX+squareButtonWidth && mouseY>=squareButtonY && mouseY<=squareButtonY+squareButtonHeight ) {
    stroke(turquoise);
    fill(blue);
    rect(squareButtonX, squareButtonY, squareButtonWidth, squareButtonHeight);
    fill(resetWhite);
    textAlign(CENTER, CENTER);
    textFont(font, size);
    text(squareButtonText, squareButtonX, squareButtonY, squareButtonWidth, squareButtonHeight);
  } else {

    stroke(green);
    fill(resetWhite);
    rect(squareButtonX, squareButtonY, squareButtonWidth, squareButtonHeight);
    fill(black);
    textAlign(CENTER, CENTER);
    textFont(font, size);
    text(squareButtonText, squareButtonX, squareButtonY, squareButtonWidth, squareButtonHeight);
  }
  fill(resetWhite);
}
//End SquareTool

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
//End LineTool

//

void playButton()
{
  if ( mouseX>=playButtonX && mouseX<=playButtonX+playButtonWidth && mouseY>=playButtonY && mouseY<=playButtonY+playButtonHeight ) {
    stroke(turquoise);
    fill(blue);
    rect(playButtonX, playButtonY, playButtonWidth, playButtonHeight);
    fill(resetWhite);
    textAlign(CENTER, CENTER);
    textFont(font, size);
  } else {

    stroke(green);
    fill(resetWhite);
    rect(playButtonX, playButtonY, playButtonWidth, playButtonHeight);
    fill(black);
    textAlign(CENTER, CENTER);
    textFont(font, size);
  }
  fill(resetWhite);
}
//End playButton

void forwardButton()
{
  if ( mouseX>=forwardButtonX && mouseX<=forwardButtonX+forwardButtonWidth && mouseY>=forwardButtonY && mouseY<=forwardButtonY+forwardButtonHeight ) {
    stroke(turquoise);
    fill(blue);
    rect(forwardButtonX, forwardButtonY, forwardButtonWidth, forwardButtonHeight);
    fill(resetWhite);
    textAlign(CENTER, CENTER);
    textFont(font, size);
  } else {

    stroke(green);
    fill(resetWhite);
    rect(forwardButtonX, forwardButtonY, forwardButtonWidth, forwardButtonHeight);
    fill(black);
    textAlign(CENTER, CENTER);
    textFont(font, size);
  }
  fill(resetWhite);
}
//End forwardButton

void reverseButton()
{
  if ( mouseX>=reverseButtonX && mouseX<=reverseButtonX+reverseButtonWidth && mouseY>=reverseButtonY && mouseY<=reverseButtonY+reverseButtonHeight ) {
    stroke(turquoise);
    fill(blue);
    rect(reverseButtonX, reverseButtonY, reverseButtonWidth, reverseButtonHeight);
    fill(resetWhite);
    textAlign(CENTER, CENTER);
    textFont(font, size);
  } else {

    stroke(green);
    fill(resetWhite);
    rect(reverseButtonX, reverseButtonY, reverseButtonWidth, reverseButtonHeight);
    fill(black);
    textAlign(CENTER, CENTER);
    textFont(font, size);
  }
  fill(resetWhite);
}
//End reverseButton

void muteButton()
{
  if ( mouseX>=muteButtonX && mouseX<=muteButtonX+muteButtonWidth && mouseY>=muteButtonY && mouseY<=muteButtonY+muteButtonHeight ) {
    stroke(turquoise);
    fill(blue);
    rect(muteButtonX, muteButtonY, muteButtonWidth, muteButtonHeight);
    fill(resetWhite);
    textAlign(CENTER, CENTER);
    textFont(font, size);
  } else {

    stroke(green);
    fill(resetWhite);
    rect(muteButtonX, muteButtonY, muteButtonWidth, muteButtonHeight);
    fill(black);
    textAlign(CENTER, CENTER);
    textFont(font, size);
  }
  fill(resetWhite);
}
//End muteButton

void stopButton()
{
  if ( mouseX>=stopButtonX && mouseX<=stopButtonX+stopButtonWidth && mouseY>=stopButtonY && mouseY<=stopButtonY+stopButtonHeight ) {
    stroke(turquoise);
    fill(blue);
    rect(stopButtonX, stopButtonY, stopButtonWidth, stopButtonHeight);
    fill(resetWhite);
    textAlign(CENTER, CENTER);
    textFont(font, size);
  } else {

    stroke(green);
    fill(resetWhite);
    rect(stopButtonX, stopButtonY, stopButtonWidth, stopButtonHeight);
    fill(black);
    textAlign(CENTER, CENTER);
    textFont(font, size);
  }
  fill(resetWhite);
}
//End stopButton

void loopButton()
{
  if ( mouseX>=loopButtonX && mouseX<=loopButtonX+loopButtonWidth && mouseY>=loopButtonY && mouseY<=loopButtonY+loopButtonHeight ) {
    stroke(turquoise);
    fill(blue);
    rect(loopButtonX, loopButtonY, loopButtonWidth, loopButtonHeight);
    fill(resetWhite);
    textAlign(CENTER, CENTER);
    textFont(font, size);
  } else {

    stroke(green);
    fill(resetWhite);
    rect(loopButtonX, loopButtonY, loopButtonWidth, loopButtonHeight);
    fill(black);
    textAlign(CENTER, CENTER);
    textFont(font, size);
  }
  fill(resetWhite);
}
//End loopButton

void nextButton()
{
  if ( mouseX>=nextButtonX && mouseX<=nextButtonX+nextButtonWidth && mouseY>=nextButtonY && mouseY<=nextButtonY+nextButtonHeight ) {
    stroke(turquoise);
    fill(blue);
    rect(nextButtonX, nextButtonY, nextButtonWidth, nextButtonHeight);
    fill(resetWhite);
    textAlign(CENTER, CENTER);
    textFont(font, size);
  } else {

    stroke(green);
    fill(resetWhite);
    rect(nextButtonX, nextButtonY, nextButtonWidth, nextButtonHeight);
    fill(black);
    textAlign(CENTER, CENTER);
    textFont(font, size);
  }
  fill(resetWhite);
}
//End nextButton

void backButton()
{
  if ( mouseX>=backButtonX && mouseX<=backButtonX+backButtonWidth && mouseY>=backButtonY && mouseY<=backButtonY+backButtonHeight ) {
    stroke(turquoise);
    fill(blue);
    rect(backButtonX, backButtonY, backButtonWidth, backButtonHeight);
    fill(resetWhite);
    textAlign(CENTER, CENTER);
    textFont(font, size);
  } else {

    stroke(green);
    fill(resetWhite);
    rect(backButtonX, backButtonY, backButtonWidth, backButtonHeight);
    fill(black);
    textAlign(CENTER, CENTER);
    textFont(font, size);
  }
  fill(resetWhite);
}
//End nextButton

void previousButton()
{
  if ( mouseX>=skipButtonX && mouseX<=skipButtonX+skipButtonWidth && mouseY>=skipButtonY && mouseY<=skipButtonY+skipButtonHeight ) {
    stroke(turquoise);
    fill(blue);
    rect(skipButtonX, skipButtonY, skipButtonWidth, skipButtonHeight);
    fill(resetWhite);
    textAlign(CENTER, CENTER);
    textFont(font, size);
  } else {

    stroke(green);
    fill(resetWhite);
    rect(skipButtonX, skipButtonY, skipButtonWidth, skipButtonHeight);
    fill(black);
    textAlign(CENTER, CENTER);
    textFont(font, size);
  }
  fill(resetWhite);
}
//End previousButton

void amplifyButton()
{
  if ( mouseX>=amplifyButtonX && mouseX<=amplifyButtonX+amplifyButtonWidth && mouseY>=amplifyButtonY && mouseY<=amplifyButtonY+amplifyButtonHeight ) {
    stroke(turquoise);
    fill(blue);
    rect(amplifyButtonX, amplifyButtonY, amplifyButtonWidth, amplifyButtonHeight);
    fill(resetWhite);
    textAlign(CENTER, CENTER);
    textFont(font, size);
  } else {

    stroke(green);
    fill(resetWhite);
    rect(amplifyButtonX, amplifyButtonY, amplifyButtonWidth, amplifyButtonHeight);
    fill(black);
    textAlign(CENTER, CENTER);
    textFont(font, size);
  }
  fill(resetWhite);
}
//End amplifyButton

void eraserButton()
{
  if ( mouseX>=eraserButtonX && mouseX<=eraserButtonX+eraserButtonWidth && mouseY>=eraserButtonY && mouseY<=eraserButtonY+eraserButtonHeight) {
    stroke(turquoise);
    fill(blue);
    rect(eraserButtonX, eraserButtonY, eraserButtonWidth, eraserButtonHeight);
    fill(resetWhite);
    textAlign(CENTER, CENTER);
    textFont(font, size);
    text(eraser, eraserButtonX, eraserButtonY, eraserButtonWidth, eraserButtonHeight);
  } else {

    stroke(green);
    fill(resetWhite);
    rect(eraserButtonX, eraserButtonY, eraserButtonWidth, eraserButtonHeight);
    fill(black);
    textAlign(CENTER, CENTER);
    textFont(font, size);
    text(eraser, eraserButtonX, eraserButtonY, eraserButtonWidth, eraserButtonHeight);
  }
  fill(resetWhite);
}
//End eraserButtred

{
  if (mouseX>=redButtonX && mouseX<=redButtonX+redButtonWidth && mouseY>=redButtonY && mouseY<=redButtonY+redButtonHeight) {
    noStroke();
    fill(Darkred);
    rect(redButtonX, redButtonY, redButtonWidth, redButtonHeight);
  } else {

    noStroke();
    fill(red);
    rect(redButtonX, redButtonY, redButtonWidth, redButtonHeight);
  }
}
//End redSetupButton

void whiteSetupButton()
{
  if (mouseX>=whiteButtonX && mouseX<=whiteButtonX+whiteButtonWidth && mouseY>=whiteButtonY && mouseY<=whiteButtonY+whiteButtonHeight) {
    noStroke();
    fill(gray);
    rect(whiteButtonX, whiteButtonY, whiteButtonWidth, whiteButtonHeight);
  } else {

    noStroke();
    fill(resetWhite);
    rect(whiteButtonX, whiteButtonY, whiteButtonWidth, whiteButtonHeight);
  }
}
//End whiteSetupButton
