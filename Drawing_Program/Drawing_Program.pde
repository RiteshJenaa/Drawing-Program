//Global vairables  //<>//
Boolean draw=false, draw1=false, draw2=false, colorButton=false;
int reset=1;
int squareWidth, squareHeight ;
float drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight, drawingDiameter; 

color resetWhite=#FFFFFF, red=#FF0A03, green=#72F04D, yellow=#ECF04D, black=0, gold= #FFD700, turquoise= #AFEEEE, blue= #005477, orange = #ffa500, gray = #808080, quitButtonColour, paperButtonColour;
//
void setup()
{
  //Mandatory: Mistaken display orientation should break app, feedback to console and CANVAS
  fullScreen();
  //
  population();
  //
  textSetup();
  //
  Paper();
  //
}
//End setup

void draw()
{
  //
  if ( paper==true ) Paper();
  //
  QuitButton();
  //
  PaperButton();
  //
  EllipseTool();
  //
  LineTool();
  //
  SquareTool();

  //Drawing Tools
  fill(resetWhite);
  if ( draw==true && mouseX>=drawingSurfaceX && mouseX<=drawingSurfaceX+drawingSurfaceWidth && mouseY>=drawingSurfaceY && mouseY<=drawingSurfaceY+drawingSurfaceHeight) line( mouseX, mouseY, pmouseX, pmouseY );  //End Line Draw
  if ( draw1==true && mouseX>=drawingSurfaceX && mouseX<=drawingSurfaceX+drawingSurfaceWidth && mouseY>=drawingSurfaceY && mouseY<=drawingSurfaceY+drawingSurfaceHeight) ellipse( mouseX, mouseY, drawingDiameter, drawingDiameter );
  if ( draw2==true && mouseX>=drawingSurfaceX && mouseX<=drawingSurfaceX+drawingSurfaceWidth && mouseY>=drawingSurfaceY && mouseY<=drawingSurfaceY+drawingSurfaceHeight) rect (  mouseX, mouseY, squareWidth, squareHeight );
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
      draw1 = false;
      draw2 = false;
    } else {
      draw = false;
      draw1 = false;
      draw2 = false;
    }//End draw Boolean
    

    }//Button Paper (Drawing Surface)

    //

    if ( mouseX>=quitButtonX && mouseX<=quitButtonX+quitButtonWidth && mouseY>=quitButtonY && mouseY<=quitButtonY+quitButtonHeight ) exit();
    if ( mouseX>=paperButtonX && mouseX<=paperButtonX+paperButtonWidth && mouseY>=paperButtonY && mouseY<=paperButtonY+paperButtonHeight ) paper=true;

    if ( draw=true && mouseX>=lineButtonX && mouseX<=lineButtonX+lineButtonWidth && mouseY>=lineButtonY && mouseY<=lineButtonY+lineButtonHeight ) line( mouseX, mouseY, pmouseX, pmouseY ); 
    if ( draw1=true && mouseX>=ellipseButtonX && mouseX<=ellipseButtonX+ellipseButtonWidth && mouseY>=ellipseButtonY && mouseY<=ellipseButtonY+ellipseButtonHeight ) ellipse( mouseX, mouseY, drawingDiameter, drawingDiameter );
    if ( draw2=true && mouseX>=squareButtonX && mouseX<=squareButtonX+squareButtonWidth && mouseY>=squareButtonY && mouseY<=squareButtonY+squareButtonHeight ) rect (  mouseX, mouseY, squareWidth, squareHeight );

    //
  }//End mousepressed

  void mouseClicked()
  {
  }
  //End mouseClicked

  //

  //End Main Program
