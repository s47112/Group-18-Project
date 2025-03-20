Flight[] flights;

void setup() {
  Reader r = new Reader();
  flights = r.readIn(1, 0, "origin city, dallas"); //<>//
}

void draw() {
  background(0);
}
