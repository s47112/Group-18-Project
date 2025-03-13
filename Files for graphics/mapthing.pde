import com.reades.mapthing.*;
import net.divbyzero.gpx.*;
import net.divbyzero.gpx.parser.*;

BoundingBox box;

PImage map;
void setup() {
  size(700,500);
  map = loadImage("usa_map.png");
  box = new BoundingBox(500,700,500,700);
  map.resize(700, 500);
}




void draw() {
  image(map,0,0);
}
