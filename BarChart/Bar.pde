class Bar {
  float value;
  float length;
  float width;
  color barColour;
  float xpos = MARGIN;
  float ypos;
  String label;
  float multiplier; 
  
  Bar(float ypos, float width, int value, String label, color barColour) {
    this.ypos = ypos;
    this.width = width;
    this.value = value;
    this.label = label;
    this.barColour = barColour;
  }
 void setLength(int length) {
   this.length = length;
 }
  
 void draw() {
   fill(barColour);
   rectMode(CORNER);
   rect(xpos, ypos, length , width);
   textAlign(RIGHT);
   fill(0);
   int textSize = 20-((label.length() * 3 / 4) - SCREENX/500);
   
   textSize(textSize);
   text(label, xpos - (SCREENX/100), ypos + textSize/3 + width/2);
   textAlign(LEFT);
   textSize(25);
   text((int) value, xpos + length + (SCREENX/200) , ypos + textSize/3 + width/2);
 }

 
   
}
