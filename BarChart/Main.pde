import java.util.*;

Graph graph;
LinkedHashMap<String, Integer> lhm = new LinkedHashMap<String, Integer>();

void setup() {
  size(800,800);
  windowResize(SCREENX, SCREENY);
  background(255);
  lhm.put("California", 30);
  lhm.put("New York", 100);
  lhm.put("Texas", 30);
  lhm.put("Kentucky", 10);
  lhm.put("South Carolina", 50);
  lhm.put("Georgia", 8);
  lhm.put("Yeehaw", 10);
  graph = new Graph(lhm);
}

void draw() {
  background(255);
  graph.draw();
  
}
