class Frame {
  
  String title = "Default title";
  String labelX = "X-axis";
  String labelY = "Y-axis";
  float multiplier;
  
  Frame(float multiplier) {
    this.multiplier = multiplier;
  }
  
  void draw() {
    //Frame
    noFill();
    rectMode(CORNERS);
    stroke(200);
    rect(MARGIN,MARGIN, SCREENX-MARGIN, SCREENY-MARGIN);
    
    strokeWeight(2);
    stroke(200);
    line(MARGIN + GRAPH_SIZE / 4, MARGIN, MARGIN + GRAPH_SIZE / 4, SCREENY-MARGIN);
    line(MARGIN + GRAPH_SIZE / 2, MARGIN, MARGIN + GRAPH_SIZE / 2, SCREENY-MARGIN);
    line(MARGIN + (GRAPH_SIZE * 3 / 4), MARGIN, MARGIN + (GRAPH_SIZE * 3/4), SCREENY-MARGIN);
    
    strokeWeight(1);
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
