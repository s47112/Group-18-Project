import java.util.ArrayList;
import java.util.Collections;

ArrayList<Flight> flights, flights1;
TextTable table1;
Filter filter1;


final int EVENT_NULL = 0;
String searchTerm = "dallas";

 Reader r = new Reader();

void setup() {
  size(1000, 1000);
 
  ArrayList<Flight> flights = r.readIn(1, 0, "n/a"); //<>//
  int rows = flights.size();
  table1 = new TextTable(rows, flights, 100, 100, 18, 150);
  filter1 = new Filter();

}

void draw() {
  background(128,128,128);
  table1.draw();
//  buttonNumber.draw();
//  buttonScrollUp.draw();
//  buttonScrollDown.draw();
}

void mousePressed(){
  table1.mousePressed();
}

void keyPressed(){
  table1.keyPressed();
}
