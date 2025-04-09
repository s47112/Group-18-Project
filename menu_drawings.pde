
class funLines {
  PImage image = loadImage("airplane.png");


void draw() {
  background(255);
  int xpos=0; int ypos = 0;
  strokeWeight(20);
  for(int i=0; i<10; i++) {
    xpos+=SCREENX/10;
    ypos+=SCREENX/30;
    stroke(colourArray[i%5], 200-i*20);
    line(-10,SCREENX-ypos,xpos,SCREENY+10);

  }
  strokeWeight(3);
  stroke(colourArray[0], 100);
  line(-10, 300-ypos, xpos, 810);
  stroke(colourArray[2], 100);
  line(-10, 450, 1000, 0);
  strokeWeight(SCREENX/2);
  stroke(colourArray[4], 50);
  noFill();
  arc(0,SCREENX/2,SCREENX*1.75,SCREENY * 1.75,0,TWO_PI);

  image.resize(240,100);
  translate(-100,250);
  rotate(radians(-20));
  image(image, 100, 100);
  rotate(radians(20));
  translate(100, -280);

}
}
