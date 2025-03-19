class Frame {
  
  String title = "Default title";
  String labelx = "X-axis";
  String labely = "Y-axis";
  
  
  void draw() {
    //Frame
    noFill();
    rectMode(CORNERS);
    stroke(200);
    rect(MARGIN,MARGIN, SCREENX-MARGIN, SCREENY-MARGIN);
  
    //Labels
    fill(0);
    textSize(24);
    textAlign(CENTER);
    text(title, SCREENX/2, MARGIN-5);
    translate(MARGIN,MARGIN);
    rotate(radians(90));
    text(labely, MARGIN-5, SCREENY/2);
  }
}
