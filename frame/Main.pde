Graph graph = new Graph(DATA); //<>//
void setup() {
  size(500,500);
  windowResize(SCREENX, SCREENY);
  background(255);
  PFont font;
  font = createFont("Consolas", 128);
  textFont(font);
}

void draw() {
  background(255);
  
  graph.draw();
  for(int index=0; index<DATA.length; index++) {
    DATA[index] += 1;
    
  }
  
  
  graph.frame.setTitle("Hello");
}
