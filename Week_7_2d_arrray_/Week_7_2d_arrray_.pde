int IMG_NUM = 25;
PImage[] cow = new PImage[IMG_NUM];

void setup() {
  size(800,800);

  for (int i = 0; i < cow.length; i++) {
    cow[i] = loadImage("laughing.png"); 
    
  }
}

void draw() {

  for (int i = 0; i < cow.length; i++) {
    translate(10,10);
    rotate(frameCount + i);
    image(cow[i],100+i*200,100,100,100);
  }
}