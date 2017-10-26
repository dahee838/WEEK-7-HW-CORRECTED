//import processing.pdf.*;

PImage cow;

void setup()
{
  noStroke();
  background(255);
  //size(800,800);
  fullScreen();
  
  //size(800, 800, PDF, "RecOne.pdf");
  cow = loadImage("cow.png");
}



void draw()
{
  for (int  i = 0; i <cow.width; i+=5)
  {
    for (int j= 0; j < cow.height; j+=5)
    {
      pushMatrix();
      translate(300,100);
      translate(i * 2, j * 2);
      rotate(radians(frameCount + i + j));
      color c = cow.get(i, j);
      fill(c);
      stroke(c);
      ellipse(5, 5, 1, 1);
      popMatrix();
    }
  }
  //println("Finished.");
  //exit();
}