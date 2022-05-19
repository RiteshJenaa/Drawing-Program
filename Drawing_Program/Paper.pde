//Global Variables
float drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight, drawingDiameter; 
float paperButtonX, paperButtonY, paperButtonHeight, paperButtonWidth;
Boolean paper=false;
//
void Paper()
{
  fill(resetWhite);
  rect(drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight);
  paper=false;
}
//End Paper
