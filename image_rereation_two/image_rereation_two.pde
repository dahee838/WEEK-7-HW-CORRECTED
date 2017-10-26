//import processing.pdf.*;

PImage cow;

int angle = 0;

void setup()
{
  noStroke();
  background(255);
  fullScreen();
  //size(800, 800, PDF, "RecTwo.pdf");
  cow = loadImage("kao.png");
}


void draw()
{

  for (int  i = 0; i <cow.width; i+=5)
  {
    for (int j= 0; j < cow.height; j+=5)
    {
      
      pushMatrix();
      translate(250,50);
      translate( i * 3, j * 3 );
      rotate(radians(frameCount + i + j));
      color c = cow.get(i, j);
      fill(c);
      rect(0, 0, 100, 10);
      popMatrix();
    }
  }
  //println("Finished.");
  //exit();
}