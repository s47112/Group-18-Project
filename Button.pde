class Widget {
  int x, y, width, height;
  String label; int event;
  color widgetColor, labelColor, strokeColor;
  final int BUTTON_GAP = 5;
  
  Widget (int x, int y, int width, int height, String label, color widgetColor, color strokeColor, int event) {
       this.x = x;
       this.y = y;
       this.width = width;
       this.height = height;
       this.label = label;
       this.event = event;
       this.widgetColor = widgetColor;
       this.strokeColor = strokeColor;
       labelColor = color(255,0,0);
          }
 
 void draw() {
   stroke(strokeColor);
   fill(widgetColor);
   rect(x,y,width,height);
   fill(labelColor);
   text(label, x+BUTTON_GAP, y+height-BUTTON_GAP);
 }
 
 int getEvent(int mX, int mY) {
   if(mX>x && mX < x+width && mY > y && mY < y+height) {
     return event;
   }
   return EVENT_NULL;
 }
}
       
