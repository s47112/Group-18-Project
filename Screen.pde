class Screen{
  color backgroundColour;
  ArrayList<Widget> buttons = new ArrayList();
  int screenNumber = 0;
  
  Screen(color tBackgroundColour, ArrayList tButtons, int tScreenNumber){
    this.backgroundColour = tBackgroundColour;
    this.buttons = tButtons;
    this.screenNumber = tScreenNumber;
  }
  
  void draw(){
    for(int i = 0; i < buttons.size(); i++){
      Widget tButton = (Widget) buttons.get(i);
      tButton.draw();
    }
  }
  
}
 
