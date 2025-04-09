class DropdownMenu {
  String filter;
  ArrayList<Flight> options;
  int x, y, optionWidth, optionHeight;
  boolean isOpen = false;
  color fillColour, strokeColour, fontColour;
  
  DropdownMenu(String filter, ArrayList<Flight> options, int x, int y, int optionWidth, int optionHeight, 
           color fillColour, color strokeColour, color fontColour){
             this.filter = filter;
             this.options = options;
             this.x = x;
             this.y = y;
             this.optionWidth = optionWidth;
             this.optionHeight = optionHeight;
             this.fillColour = fillColour;
             this.strokeColour = strokeColour;
             this.fontColour = fontColour;
           }
 void display(){
   fill(fillColour); stroke(strokeColour); 
   rect(x, y, optionWidth, optionHeight); 
   text(filter, x+5, y+5);
           }
 
 void draw(){
   if(isOpen){
     for ( int i = 0; i <=options.size(); i++){
      rect(x, y + optionHeight, optionWidth, options.size()*optionHeight);
      //text(options.get(i).filter, x + 5, y + (i+2)*optionHeight);
     }
     }
}
} 
