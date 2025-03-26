class Bar {
  float value;
  float length;
  float width;
  color barColour;
  float xpos = MARGIN;
  float ypos;
  String label;
  float multiplier; 
  
  Bar(float ypos, float width, int length, String label, color barColour, float multiplier) {
    this.ypos = ypos;
    this.width = width;
    this.length = length;
    this.value = length / multiplier;
    this.label = label;
    this.barColour = barColour;
    this.multiplier = multiplier;
  }
  
  
 void draw() {
   fill(barColour);
   rectMode(CORNER);
   rect(xpos, ypos, length , width);
   textAlign(RIGHT);
   fill(0);
   int textSize = 20-(label.length() - SCREENX/500);
   
   textSize(textSize);
   text(label, xpos - (SCREENX/100), ypos + textSize/3 + width/2);
   textAlign(LEFT);
   textSize(25);
   text((int) (length / multiplier), xpos + length + (SCREENX/200) , ypos + textSize/3 + width/2);
 }

 
   
}
