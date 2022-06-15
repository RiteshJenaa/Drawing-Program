void population()
{
  //Population
  drawingSurfaceX = displayWidth*0;
  drawingSurfaceY = displayHeight*0;
  drawingSurfaceWidth = displayWidth*4/5;
  drawingSurfaceHeight = displayHeight;
  drawingDiameter = displayWidth*1/80;
  //
  quitButtonX = displayWidth*4/5;
  quitButtonY = displayHeight*0;
  quitButtonWidth = displayWidth*1/10;
  quitButtonHeight = displayHeight*1/10;
  //
  paperButtonX = quitButtonX; 
  paperButtonY = displayHeight*1/10;
  paperButtonWidth = quitButtonWidth;
  paperButtonHeight = quitButtonHeight; 
  //
  ellipseButtonX = quitButtonX; 
  ellipseButtonY = displayHeight*2/10;
  ellipseButtonWidth = quitButtonWidth; 
  ellipseButtonHeight = quitButtonHeight;
  //
  lineButtonX = displayWidth*4.5/5;
  lineButtonY = displayHeight*2/10;
  lineButtonWidth = quitButtonWidth;
  lineButtonHeight = quitButtonHeight;
  //
  squareButtonX = displayWidth*4.5/5;
  squareButtonY = displayHeight*1/10;
  squareButtonWidth = quitButtonWidth;
  squareButtonHeight = quitButtonHeight;
  //
  squareWidth = displayWidth*1/30;
  squareHeight = displayHeight*1/30;
  //
  playButtonX = displayWidth*4.4/5;
  playButtonY = displayHeight*4.2/5;
  playButtonWidth = displayWidth*1/20;
  playButtonHeight = displayHeight*1/20;
  //
  forwardButtonX = displayWidth*4.8/5;
  forwardButtonY = playButtonY;
  forwardButtonWidth = displayWidth*1/20;
  forwardButtonHeight = displayHeight*1/20;
  //
  reverseButtonX = displayWidth*4/5;
  reverseButtonY = playButtonY;
  reverseButtonWidth = displayWidth*1/20;
  reverseButtonHeight = displayHeight*1/20;
  //
  muteButtonX = reverseButtonX;
  muteButtonY = displayHeight*4.5/5; 
  muteButtonWidth = displayWidth*1/20;
  muteButtonHeight = displayHeight*1/20;
  //
  stopButtonX = playButtonX;
  stopButtonY = muteButtonY;
  stopButtonWidth = muteButtonWidth;
  stopButtonHeight = muteButtonHeight;
  //
  loopButtonX = forwardButtonX;
  loopButtonY = muteButtonY;
  loopButtonWidth = muteButtonWidth;
  loopButtonHeight = muteButtonHeight;
  //
  nextButtonX = forwardButtonX;
  nextButtonY = displayHeight*4.8/5;
  nextButtonWidth = muteButtonWidth;
  nextButtonHeight= muteButtonHeight;
  //
  backButtonX = reverseButtonX;
  backButtonY = nextButtonY;
  backButtonWidth = muteButtonWidth;
  backButtonHeight = muteButtonHeight;
  //
  skipButtonX = playButtonX;
  skipButtonY = nextButtonY;
  skipButtonWidth = muteButtonWidth;
  skipButtonHeight = muteButtonHeight;
}
//End population
