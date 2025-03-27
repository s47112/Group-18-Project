class TextTable{
  int xPos;
  int yPos;
  int rowSize;
  int columnSize;
  int rows;
  ArrayList<Flight> flightData;
  color HEADER_BACKGROUND = color(126, 162, 255);
  color HEADER_TEXT_COLOUR = color(120, 94, 240);
  color TABLE_BACKGROUND = color(255);
  color TABLE_TEXT_COLOUR = color(0);
  color TABLE_STROKE_COLOUR = color(0);
  int TABLE_GAP = 5;
  int index = 1;
  boolean canType = false;
  String buttonTerm = "";

//  final Widget buttonNumber, buttonScrollUp, buttonScrollDown;

  
  TextTable(int tRows, ArrayList<Flight> tFlightData, int tXPos, int tYPos, int tRowSize,
                int tColumnSize){
    this.rows = tRows;
    this.flightData = tFlightData;
    this.xPos = tXPos;
    this.yPos = tYPos;
    this.rowSize = tRowSize;
    this.columnSize = tColumnSize;
  }
  
  void draw(){
    stroke(TABLE_STROKE_COLOUR);
    rect(xPos, (yPos-rowSize), columnSize*5, rowSize+TABLE_GAP); //table header
    fill(TABLE_BACKGROUND);

    rect(xPos, yPos+TABLE_GAP, columnSize*5, rowSize*rows + (int)1.5*TABLE_GAP); //table body
    fill(color(255));
    rect(xPos + (columnSize*5) - 15, yPos + TABLE_GAP+15, 15, rowSize*rows + (int)1.5*TABLE_GAP - 30); //scroll bar
        fill(HEADER_BACKGROUND);
    rect(xPos + (columnSize*5) - 15, yPos + TABLE_GAP+15 + index, 15, 5); //scroll bar reference
    textSize(14);

    text("Flight Number", xPos + TABLE_GAP, yPos);
    text("Flight Date", xPos + columnSize + TABLE_GAP, yPos);
    text("From", xPos +(2*columnSize) + TABLE_GAP, yPos);
    text("To", xPos +(3*columnSize) + TABLE_GAP, yPos);
    text("Carrier", xPos +(4*columnSize) + TABLE_GAP, yPos);
    for(int i = index; i < rows + index; i++){

      textSize(12);
      fill(TABLE_TEXT_COLOUR);
      text(flightData.get(i-1).IATACode + flightData.get(i-1).flightNumber, xPos + TABLE_GAP, yPos +((i-index+1)*rowSize)+TABLE_GAP);
      text(flightData.get(i-1).flightDate, xPos + columnSize + TABLE_GAP, yPos +((i-index+1)*rowSize)+TABLE_GAP);
      text(flightData.get(i-1).originCity, xPos +(2*columnSize) + TABLE_GAP, yPos +((i-index+1)*rowSize)+TABLE_GAP);
      text(flightData.get(i-1).destinationCity, xPos +(3*columnSize) + TABLE_GAP, yPos +((i-index+1)*rowSize)+ TABLE_GAP);
      text(flightData.get(i-1).IATACode, xPos +(4*columnSize) + TABLE_GAP, yPos +((i-index+1)*rowSize)+TABLE_GAP);
      fill(HEADER_BACKGROUND);
      
    }
    fill(color(255));
    rect(210, 30, 90, 30);
    fill(color(0));
    text(buttonTerm, 220, 50);
    fill(color(0,255,0));
    rect( 310, 30, 30, 30);
  Widget buttonNumber = new Widget(100, 30, 90, 30, "Origin City", 
                              color(126, 162, 255), color(255, 176, 0), 1);
   buttonNumber.draw();
  Widget buttonScrollUp = new Widget(xPos + (columnSize*5) - 15, yPos + TABLE_GAP, 15, 15, "↑", 
                              color(126, 162, 255), color(255, 176, 0), 1);
   buttonScrollUp.draw();
  Widget buttonScrollDown = new Widget(xPos + (columnSize*5) - 15, (yPos + rowSize*rows) - (int)1.5*TABLE_GAP, 15, 15, "↓", 
                              color(126, 162, 255), color(255, 176, 0), 2);
   buttonScrollDown.draw();
  }
  void mousePressed(){
  if (mouseX > table1.xPos + (table1.columnSize*5) - 15 && mouseX <= table1.xPos + (table1.columnSize*5) &&
      mouseY > table1.yPos + table1.TABLE_GAP && mouseY <= table1.yPos + table1.TABLE_GAP + 15){
        table1.index--;
      }
  if (mouseX > (table1.xPos + (table1.columnSize*5) - 15) && mouseX <= (table1.xPos + (table1.columnSize*5)) &&
      mouseY > ((table1.yPos + table1.rowSize*table1.rows) - (int)1.5*table1.TABLE_GAP) && mouseY <= ((table1.yPos + table1.rowSize*table1.rows) - (int)1.5*table1.TABLE_GAP + 15)){
        table1.index++;
      }
  if (mouseX > 210 && mouseX <= 300 && mouseY > 30 && mouseY <= 60){
    canType = true;
  }
    else canType = false;
    
  if (mouseX > 310 && mouseX <= 340 && mouseY > 30 && mouseY <= 60){
    searchTerm = buttonTerm;
    buttonTerm = "";
  }
    flightData = r.readIn(1, 0, "origin city, " + searchTerm);
}
void keyPressed(){
  if (canType == true){
    buttonTerm += key;
  }

}
}
