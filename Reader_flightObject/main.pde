Flight[] flights;

void setup() {
  System.out.println("r");
  Reader r = new Reader();
  flights = r.readIn(1, 5, "n/a"); //<>//
}

void draw() {
  background(0);
}
