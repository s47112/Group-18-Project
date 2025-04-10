
class TextTable{
  int xPos;
  int yPos;
  int rowSize;
  int columnSize;
  int rows;
  final int MAX_ROWS = 20;
  ArrayList<Flight> flightData;
  color HEADER_BACKGROUND = color(126, 162, 255);
  color HEADER_TEXT_COLOUR = color(120, 94, 240);
  color TABLE_BACKGROUND = color(255);
  color TABLE_TEXT_COLOUR = color(0);
  color TABLE_STROKE_COLOUR = color(0);
  int TABLE_GAP = 5;
  int index = 1;
  boolean canTypeOrigin = false;

  boolean canTypeDestination =  false;
  String buttonTermOrigin = "";
  String buttonTermDestination = "";
  boolean isDoubleFiltered = false;

//  final Widget buttonNumber, buttonScrollUp, buttonScrollDown;

  
  TextTable(int tRows, ArrayList<Flight> tFlightData, int tXPos, int tYPos, int tRowSize,
                int tColumnSize){
    if(tFlightData.size() <= MAX_ROWS)
      this.rows = tRows;
    else rows = MAX_ROWS;
    this.flightData = tFlightData;
    this.xPos = tXPos;
    this.yPos = tYPos;
    this.rowSize = tRowSize;
    this.columnSize = tColumnSize;
  }
  
  void draw(){
    textAlign(LEFT);
    stroke(TABLE_STROKE_COLOUR);
    fill(HEADER_BACKGROUND);
    rect(xPos, (yPos-rowSize), columnSize*5, rowSize+TABLE_GAP); //table header
    fill(TABLE_BACKGROUND);

    rect(xPos, yPos+TABLE_GAP, columnSize*5, rowSize*MAX_ROWS + (int)1.5*TABLE_GAP); //table body
    if(flightData.size()>MAX_ROWS){
    fill(color(255));
    rect(xPos + (columnSize*5) - 15, yPos + TABLE_GAP+15, 15, rowSize*rows + (int)1.5*TABLE_GAP - 30); //scroll bar
        fill(HEADER_BACKGROUND);
              double unit = (rowSize*rows + (int)1.5*TABLE_GAP - 30)/rows; //normalise scroll bar movements
    rect(xPos + (columnSize*5) - 15, yPos + TABLE_GAP+15 + (index-1)*(int)unit + rows/(rowSize*rows + (int)1.5*TABLE_GAP - 30), 15, (rowSize*rows + (int)1.5*TABLE_GAP - 30)/((int)unit)); //scroll bar reference
    }
    textSize(14);
    fill(color(0));
    text("Flight Number", xPos + TABLE_GAP, yPos);
    text("Flight Date", xPos + columnSize + TABLE_GAP, yPos);
    text("From", xPos +(2*columnSize) + TABLE_GAP, yPos);
    text("To", xPos +(3*columnSize) + TABLE_GAP, yPos);
    text("Carrier", xPos +(4*columnSize) + TABLE_GAP, yPos);
    
    for(int i = index; i < rows + index; i++){
      
        if(i<= flightData.size()){
          textSize(12);
          fill(TABLE_TEXT_COLOUR);
          text(flightData.get(i-1).IATACode + flightData.get(i-1).flightNumber, xPos + TABLE_GAP, yPos +((i-index+1)*rowSize)+TABLE_GAP);
          text(flightData.get(i-1).flightDate, xPos + columnSize + TABLE_GAP, yPos +((i-index+1)*rowSize)+TABLE_GAP);
          text(flightData.get(i-1).originCity + ", " + flightData.get(i-1).originState, xPos +(2*columnSize) + TABLE_GAP, yPos +((i-index+1)*rowSize)+TABLE_GAP);
          text(flightData.get(i-1).destinationCity + ", " + flightData.get(i-1).destinationState, xPos +(3*columnSize) + TABLE_GAP, yPos +((i-index+1)*rowSize)+ TABLE_GAP);
          text(flightData.get(i-1).IATACode, xPos +(4*columnSize) + TABLE_GAP, yPos +((i-index+1)*rowSize)+TABLE_GAP);
          fill(HEADER_BACKGROUND);
        }
      }
    
    fill(color(255));
    rect(xPos+110, yPos-70, 90, 30); // origin search bar 
    rect(xPos+360, yPos-70, 90, 30); // destination search bar
    fill(color(0));
    text(buttonTermOrigin, xPos+120, yPos-50); // origin search bar text
    text(buttonTermDestination, xPos +370, yPos-50); // destination search bar text
    fill(color(200,200,200));
    rect( xPos+210, yPos-70, 30, 30); // origin search button
    rect (xPos+460, yPos-70, 30, 30); // destination search button
  Button buttonOrigin = new Button(xPos+30, yPos-65, 70, 20, "Origin", 
                              HEADER_BACKGROUND, color(0), 1);
   buttonOrigin.draw();
  Button buttonDestination = new Button(xPos+260, yPos-65, 90, 20, "Destination", HEADER_BACKGROUND, color(0), 1);
    buttonDestination.draw();
  if(flightData.size()>MAX_ROWS){
  Button buttonScrollUp = new Button(xPos + (columnSize*5) - 15, yPos + TABLE_GAP, 15, 15, "↑", 
                              color(126, 162, 255), color(0), 1);
   buttonScrollUp.draw();
  Button buttonScrollDown = new Button(xPos + (columnSize*5) - 15, (yPos + rowSize*rows) - (int)1.5*TABLE_GAP, 15, 15, "↓", 
                              color(126, 162, 255), color(0), 2);
   buttonScrollDown.draw();
  }
  }
  void mousePressed(){
    if(flightData.size()>MAX_ROWS){
  if (mouseX > table1.xPos + (table1.columnSize*5) - 15 && mouseX <= table1.xPos + (table1.columnSize*5) &&
      mouseY > table1.yPos + table1.TABLE_GAP && mouseY <= table1.yPos + table1.TABLE_GAP + 15){ // if scroll up is pressed
      if(index>1){
        table1.index--;  //scroll up
      }
      }
  if (mouseX > (table1.xPos + (table1.columnSize*5) - 15) && mouseX <= (table1.xPos + (table1.columnSize*5)) &&
      mouseY > ((table1.yPos + table1.rowSize*table1.rows) - (int)1.5*table1.TABLE_GAP) && mouseY <= ((table1.yPos + table1.rowSize*table1.rows) - (int)1.5*table1.TABLE_GAP + 15)){ //if scroll down button is pressed
      if(flightData.size()-index>= rows){
        table1.index++;  //scroll down
      }
      }
    }
  if (mouseX > (xPos+110) && mouseX <= (xPos+200) && mouseY > (yPos-70) && mouseY <= (yPos-40)){ // if origin search bar is clicked
    canTypeOrigin = true;
  }
    else canTypeOrigin = false;
    
  if (mouseX > (xPos+210) && mouseX <= (xPos+240) && mouseY > (yPos-70) && mouseY <= (yPos-40)){ //if origin search button is pressed //<>//
    flightData = r.readIn(1, 0, "origin city, " + buttonTermOrigin);
    //flightData = filter1.filtering(flightData, "origin city, " + buttonTermOrigin);
    buttonTermOrigin = "";
    index = 1;
  }

    if(flightData.size() <= MAX_ROWS)
      rows = flightData.size();
      else rows = MAX_ROWS;
   if (mouseX > (xPos+360) && mouseX <= (xPos+450) && mouseY > (yPos-70) && mouseY <= (yPos-40)){ //if destination search bar is clicked
    canTypeDestination = true;
  }
    else canTypeDestination = false;
    
  if (mouseX > (xPos+460) && mouseX <= (xPos+490) && mouseY > (yPos-70) && mouseY <= (yPos-40)){ // if destination search button is clicked

    flightData = r.readIn(1, 0, "destination city, " + buttonTermDestination);
 
    //flightData = filter1.filtering(flightData, "destination city, " + buttonTermDestination);
    buttonTermDestination = "";
    index = 1;
  }
//    flightData = r.readIn(1, 0, "destination city, " + searchTerm);
}
void keyPressed(){
  if (canTypeOrigin == true){
    buttonTermOrigin += key;
  }
  
  if (canTypeDestination == true){
    buttonTermDestination += key;
  }

}
}
