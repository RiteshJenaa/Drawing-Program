void Images()
{   
  pic1 = loadImage("pause.png");
  pic2 = loadImage("reverse.png");
  pic3 = loadImage("forward.png");
  pic4 = loadImage("mute.png");
  pic5 = loadImage("stop.png");
  pic6 = loadImage("loop.png");
  pic7 = loadImage("next.png");
  pic8 = loadImage("backwards.png");
  pic9 = loadImage("arrow.png");
  pic10 = loadImage("amplify1.png");
}
//End Images

void picDraw()
{
  image(pic1, rectXPic1, rectYPic1, rectWidthPic1, rectHeightPic1);
  image(pic2, rectXPic2, rectYPic2, rectWidthPic2, rectHeightPic2);
  image(pic3, rectXPic3, rectYPic3, rectWidthPic3, rectHeightPic3);
  image(pic4, rectXPic4, rectYPic4, rectWidthPic4, rectHeightPic4);
  image(pic5, rectXPic5, rectYPic5, rectWidthPic5, rectHeightPic5);
  image(pic6, rectXPic6, rectYPic6, rectWidthPic6, rectHeightPic6);
  image(pic7, rectXPic7, rectYPic7, rectWidthPic7, rectHeightPic7);
  image(pic8, rectXPic8, rectYPic8, rectWidthPic8, rectHeightPic8);
  image(pic9, rectXPic9, rectYPic9, rectWidthPic9, rectHeightPic9);
  image(pic10, rectXPic10, rectYPic10, rectWidthPic10, rectHeightPic10);
}
//End pic1draw
