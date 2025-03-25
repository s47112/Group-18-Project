class Bar {
  float length;
  float width;
  color barColour = color(255,0,0);
  float xpos = MARGIN;
  float ypos;
  String label = "California";
   
  Bar(float ypos, float width, int length, String label) {
    this.ypos = ypos;
    this.width = width;
    this.length = length;
    this.label = label;
  }
  
  
 void draw() {
   fill(barColour);
   rectMode(CORNER);
   rect(xpos, ypos, length, width);
   textAlign(RIGHT);
   fill(0);
   int textSize = 20-(label.length() - SCREENX/500);
   
   textSize(textSize);
   text(label, xpos - (SCREENX/100), ypos + textSize/3 + width/2);
   textAlign(LEFT);
   textSize(25);
   text((int)length, xpos + length + (SCREENX/200) , ypos + textSize/3 + width/2);
 }
   
}
