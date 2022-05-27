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
}

//End population
