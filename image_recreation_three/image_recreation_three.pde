//import processing.pdf.*;
PImage cow;

void setup()
{
  noStroke();
  background(255);
  size(800,800);
  //size(800, 800, PDF, "RecTwo.pdf");
  cow = loadImage("hamburger.png");
}



void draw()
{

  for (int  i = 0; i <cow.width; i+=5)
  {
    for (int j= 0; j < cow.height; j+=5)
    {
      pushMatrix();
      translate( i * 1.75, j * 1.75 );


      color c = cow.get(i, j);
      fill(c);
      ellipse(9, 10, 100, 10);
      popMatrix();
    }
  }
  //println("Finished.");
  //exit();
}