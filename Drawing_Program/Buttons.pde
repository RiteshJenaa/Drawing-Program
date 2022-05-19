//Global Variables
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
float resetButtonX, resetButtonY, resetButtonHeight, resetButtonWidth;
//
void QuitButton()
{
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
}
//End QuitButton

//

void PaperButton()
{
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
}
//End PaperButton

//

void ResetButton()
{
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
//End ResetButton
