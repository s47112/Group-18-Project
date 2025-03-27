import java.util.ArrayList;
ArrayList<Flight> flights;
TextTable table1;
//Widget buttonNumber, buttonScrollUp, buttonScrollDown; // buttonDate, buttonFrom, buttonTo, buttonCarrier;
int rows = 40;
final int EVENT_NULL = 0;
String searchTerm = "houston";
 Reader r = new Reader();
void setup() {
  size(1000,1000);
 
  ArrayList<Flight> flights = r.readIn(1, 0, "origin city, " + searchTerm); //<>//
  table1 = new TextTable(rows, flights, 100, 100, 16, 150);
//  buttonNumber = new Widget(100, 30, 90, 30, "Flight Number", 
  //                            color(126, 162, 255), color(255, 176, 0), 1);
  //buttonScrollUp = new Widget(table1.xPos + (table1.columnSize*5) - 15, table1.yPos + table1.TABLE_GAP, 15, 15, "-", 
    //                          color(126, 162, 255), color(255, 176, 0), 1);
  //buttonScrollDown = new Widget(table1.xPos + (table1.columnSize*5) - 15, (table1.yPos + table1.rowSize*table1.rows) - (int)1.5*table1.TABLE_GAP, 15, 15, "+", 
    //                          color(126, 162, 255), color(255, 176, 0), 2);
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
