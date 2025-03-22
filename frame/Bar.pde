class Bar {
  float length;
  float width;
  color barColour = color(255,0,0);
  float xpos = MARGIN;
  float ypos;
  String label = "California";
   
  Bar(float ypos, float width, float length) {
    this.ypos = ypos;
    this.width = width;
    this.length = length;
  }
  
  
 void draw() {
   fill(barColour);
   rectMode(CORNER);
   rect(xpos, ypos, length, width);
   textAlign(RIGHT);
   fill(0);
   int textSize = 25-(label.length());
   
   textSize(textSize);
   text(label, xpos - 10, ypos + textSize/3 + width/2);
   textAlign(LEFT);
   textSize(25);
   text((int)length, xpos + length + 5 , ypos + textSize/3 + width/2);
   //rect(xpos + width + CHART_SPACING, ypos, width, -height+30);
   //rect(xpos + 2*width + 2*CHART_SPACING, ypos, width, -height);
   //rect(xpos + (2*width)+10, ypos, 20, -20);
 }
   
 void setLabel(String label) {
   this.label = label;
}
}
