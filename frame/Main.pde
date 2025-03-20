Graph graph = new Graph(4);
void setup() {
  size(500,500);
  windowResize(SCREENX, SCREENY);
  background(255);
}

void draw() {
  background(255);
  graph.draw();
  
}
