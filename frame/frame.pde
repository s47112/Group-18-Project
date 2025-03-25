class Frame {
  
  String title = "Default title";
  String labelX = "X-axis";
  String labelY = "Y-axis";
  
  void draw() {
    //Frame
    noFill();
    rectMode(CORNERS);
    stroke(200);
    rect(MARGIN,MARGIN, SCREENX-MARGIN, SCREENY-MARGIN);
  
    //Labels
    textAlign(CENTER);
    textSize(SCREENX/25);
    
    //Title
    fill(0);
    text(title, SCREENX/2, MARGIN-5);
    
    //X-label
    textSize(SCREENX/50);
    fill(100);
    text(labelX, SCREENX/2, SCREENY - MARGIN/5);
    
    
    //Y-label
    //translate(-SCREENX/2 + MARGIN/2 , SCREENY/2 + MARGIN);
    rotate(radians(-40));
    text(labelY, 0, MARGIN);
    
    //reset translation and rotation
    rotate(radians(40));
    //translate(-(-SCREENX/2 + MARGIN/2) , -(SCREENY/2 + MARGIN));
  }
  
  void setTitle(String title) {
    this.title = title;
  }
  
  void setLabelX(String labelX) {
    this.labelX = labelX;
  }
  
  void setLabelY(String labelY) {
    this.labelY = labelY;
  }
  
}
