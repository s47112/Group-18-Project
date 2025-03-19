final int SCREENX = 900;
final int SCREENY = 600;

Map theMap;

void settings()
{
  size(SCREENX, SCREENY);
}

void setup() 
{
  theMap = new Map(SCREENY);
  
  PImage usa_map = loadImage("usa_map");
  
}

void draw() {
  
  rect(30,50,100,100);
 
  frameRate(60);
}
class Map
{
  PImage usa_map;
}
