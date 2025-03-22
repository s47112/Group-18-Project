 //<>//
class Graph {
  
  Frame frame = new Frame();
  Bar[] barArray;
  
  Graph(int[] dataSet) {
    
    float totalGap = GRAPH_SIZE / 4;
    final float GAP_WIDTH = totalGap / (dataSet.length + 1);
    float totalBar = (GRAPH_SIZE / 4) * 3;
    final float BAR_WIDTH = totalBar / dataSet.length;
    
    barArray = new Bar[dataSet.length];
    float ypos = MARGIN + GAP_WIDTH;
    int tempLength;
    for(int index = 0; index<barArray.length; index++) {
      tempLength = dataSet[index];
      barArray[index] = new Bar(ypos, BAR_WIDTH, tempLength);
      ypos += BAR_WIDTH + GAP_WIDTH;
    }
    
   barArray[1].setLabel(new String[]{"Arizona", "AZ"});
    
  }
  
  void draw() {
    //noStroke();
    frame.draw();
    for (Bar bar : barArray) {
      bar.draw();
    }
  }
}
