class Bar {
  int height = 50;
  int width;// = ((GRAPH_SIZE - 2*CHART_SPACING) - (CHART_SPACING * (BAR_COUNT - 1))) / BAR_COUNT;
  color barColour = color(255,0,0);
  int xpos = MARGIN + 20;
  int ypos = SCREENY-MARGIN;

 
  Bar(int xpos, int height, int barCount) {
    this.xpos = xpos;
    this.height = height;
    this.width = ((GRAPH_SIZE - 2*CHART_SPACING) - (CHART_SPACING * (barCount - 1))) / barCount;
  }
  
  
 void draw() {
   fill(barColour);
   rectMode(CORNER);
   rect(xpos, SCREENY-MARGIN, width, -height);
   
   //rect(xpos + width + CHART_SPACING, ypos, width, -height+30);
   //rect(xpos + 2*width + 2*CHART_SPACING, ypos, width, -height);
   //rect(xpos + (2*width)+10, ypos, 20, -20);
 }
 
 void setHeight(int height) {
   this.height = height;
 }
 
}
