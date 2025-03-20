class TextTable{
  int xPos;
  int yPos;
  int rowSize;
  int columnSize;
  int rows;
  ArrayList<Flight> flightData;

  
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
    textSize(14);
    text("Flight Number", xPos, yPos);
    text("Flight Date", xPos + columnSize, yPos);
    text("From", xPos +(2*columnSize), yPos);
    text("To", xPos +(3*columnSize), yPos);
    text("Carrier", xPos +(4*columnSize), yPos);
    for(int i = 1; i <= rows; i++){
      text(flightData.get(i-1).IATACode + flightData.get(i-1).flightNumber, xPos, yPos +(i*rowSize));
      text(flightData.get(i-1).flightDate, xPos + columnSize, yPos +(i*rowSize));
      text(flightData.get(i-1).originCity, xPos +(2*columnSize), yPos +(i*rowSize));
      text(flightData.get(i-1).destinationCity, xPos +(3*columnSize), yPos +(i*rowSize));
      text(flightData.get(i-1).IATACode, xPos +(4*columnSize), yPos +(i*rowSize));
    }
  }
}
