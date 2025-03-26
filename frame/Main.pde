import java.util.*; //<>//
Graph graph;
LinkedHashMap<String, Integer> hm = new LinkedHashMap<String, Integer>();
void setup() {
  size(500,500);
  windowResize(SCREENX, SCREENY);
  PFont font;
  font = createFont("Consolas", 128);
  textFont(font);
  hm.put("Alaska", 100);
  hm.put("California", 30);
  hm.put("New York", 500);
  hm.put("New Jersey", 100);
  hm.put("Texas", 50);
  hm.put("x", 100);
  graph = new Graph(hm, 50);
}

void draw() {
  background(255);
  graph.draw();

  }
