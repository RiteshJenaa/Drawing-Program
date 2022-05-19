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
  resetButtonX = quitButtonX;
  resetButtonY = displayHeight*1/10;
  resetButtonHeight = quitButtonWidth;
  resetButtonWidth = quitButtonHeight;
  //
  paperButtonX = quitButtonX; 
  paperButtonY = displayHeight*1/5;
  paperButtonHeight = quitButtonWidth ; 
  paperButtonWidth = quitButtonHeight;
}

//End population
