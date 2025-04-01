import java.util.*;

Graph graph;
LinkedHashMap<String, Integer> lhm = new LinkedHashMap<String, Integer>();

void setup() {
  size(800,800);
  background(255);
  lhm.put("California", 30);
  lhm.put("New York", 100);
  lhm.put("Texas", 30);
  lhm.put("Kentucky", 500);
  lhm.put("South Carolina", 600);
  lhm.put("Georgia", 468);
  graph = new Graph(lhm, 1);
  graph.setTitle("Flights from each state");
}

void draw() {
  background(255);
  graph.draw();
}
