final int SCREENX = 900;
final int SCREENY = 600;

PImage usa_map = loadImage("usa_map");

void settings()
{
  size(SCREENX, SCREENY);
}

void setup() 
{
  usa_map = loadImage("usa_map.png");

  
}

void draw() {
  
  //rect(30,50,100,100);

  image(usa_map, 0, 0, 900, 600);
 
  frameRate(60);
}
