import java.util.ArrayList;

Flight[] flights;
TextTable table1;

void setup() {
  size(1000,400);
  Reader r = new Reader();
  ArrayList<Flight> flights = r.readIn(1, 0, "origin city, dallas"); //<>//
  table1 = new TextTable(10, flights, 100, 100, 16, 150);
}

void draw() {
  background(0);
  table1.draw();
}
