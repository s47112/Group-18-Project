class Frame {
  
  String title = "Default title";
  String labelX = "X-axis";
  String labelY = "Y-axis";
  //float multiplier;
  
  Frame() {
    //this.multiplier = scaling;
  }
  
  void draw() {
    //Frame
    strokeWeight(2);
    noFill();
    rectMode(CORNERS);
    stroke(200);
    rect(MARGIN,MARGIN, SCREENX-MARGIN, SCREENY-MARGIN);
    
    float ONE_QUARTER_GRAPH = MARGIN + (GRAPH_SIZE / 4);
    float HALF_GRAPH = MARGIN + GRAPH_SIZE / 2;
    float THREE_QUARTER_GRAPH = MARGIN + (GRAPH_SIZE * 3 / 4);
    
    strokeWeight(1);
    line(ONE_QUARTER_GRAPH, MARGIN, ONE_QUARTER_GRAPH, SCREENY-MARGIN);
    line(HALF_GRAPH, MARGIN, HALF_GRAPH, SCREENY-MARGIN);
    line(THREE_QUARTER_GRAPH, MARGIN, THREE_QUARTER_GRAPH, SCREENY-MARGIN);      
    
    //Labels
    textAlign(CENTER);
    textSize(SCREENX/25 - 20);
    fill(100);
    text(0, MARGIN, SCREENY-(MARGIN/4 * 3));
    text((int) ((GRAPH_SIZE / 4) / multiplier), ONE_QUARTER_GRAPH, SCREENY-(MARGIN/4 * 3));
    text((int) ((GRAPH_SIZE / 2) / multiplier), HALF_GRAPH, SCREENY-(MARGIN/4 * 3));
    text((int) ((GRAPH_SIZE / 4 * 3) / multiplier), THREE_QUARTER_GRAPH, SCREENY-(MARGIN/4 * 3));
    text((int) (GRAPH_SIZE / multiplier), MARGIN + GRAPH_SIZE, SCREENY-(MARGIN/4 * 3));
    
    
    //Title
    textSize(SCREENX/25);
    fill(0);
    text(title, SCREENX/2, MARGIN-5);
    
    //X-label
    textSize(SCREENX/50);
    fill(100);
    text(labelX, SCREENX/2, SCREENY - MARGIN/5);
    
    
    //Y-label
    rotate(radians(-40));
    text(labelY, 0, MARGIN);
    
    //reset rotation
    rotate(radians(40));
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
