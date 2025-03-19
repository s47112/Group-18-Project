class TextTable{
  int xPos;
  int yPos;
  int rowSize;
  int columnSize;
  int rows;
  String[] flightData;
  
  TextTable(int tRows, String[] tFlightData, int tXPos, int tYPos, int tRowSize,
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
      text(flightData.airlineCodesAL.get(i-1) + flightData.flightNumberAL.get(i), xPos, yPos +(i*rowSize));
      text(flightData.flightDatesAL.get(i-1), xPos + columnSize, yPos +(i*rowSize));
      text(flightData.originCitiesAL.get(i-1), xPos +(2*columnSize), yPos +(i*rowSize));
      text(flightData.destCitiesAL.get(i-1), xPos +(3*columnSize), yPos +(i*rowSize));
      text(flightData.airlineCodesAL.get(i-1), xPos +(4*columnSize), yPos +(i*rowSize));
    }
  }
