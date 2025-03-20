class Graph {
  Frame frame = new Frame();
  Bar[] barArray;
  
  
  
  Graph(int barCount) {
    barArray = new Bar[barCount];
    int xpos = MARGIN + CHART_SPACING;
    for (int index=0; index < barArray.length; index++) {
      barArray[index] = new Bar(xpos, xpos/2, barCount);
      xpos += barArray[index].width + CHART_SPACING;
    }
  }
  
  void draw() {
    for (Bar bar : barArray) {
      bar.draw();
      bar.height++;
    }
    frame.draw();
  
  
}
}
