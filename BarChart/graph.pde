 //<>//
class Graph {
  
  Frame frame;
  Bar[] barArray;
  
  Graph(LinkedHashMap<String, Integer> values, float multiplier) {
    frame = new Frame(multiplier);
    
    // calculating gaps and widths, bar:gap = 3:1
    float totalGap = GRAPH_SIZE / 4;
    final float GAP_WIDTH = totalGap / (values.size() + 1);
    float totalBar = (GRAPH_SIZE / 4) * 3;
    final float BAR_WIDTH = totalBar / values.size();
    
    //initialising array of bars
    barArray = new Bar[values.size()];
    float ypos = MARGIN + GAP_WIDTH;
    int i = 0;
    for(Map.Entry datum : values.entrySet()) {
      barArray[i] = new Bar(ypos, BAR_WIDTH, (int) datum.getValue(), (String) datum.getKey(), colourArray[i % 5], multiplier);
      ypos += BAR_WIDTH + GAP_WIDTH;
      i++;
    }      
  }
  
  void draw() {
    frame.draw();
    for (Bar bar : barArray) {
      bar.draw();
    }
  }
  
  void setTitle(String title) {
    this.frame.title = title;
  }
  void setLabelX(String labelX) {
    this.frame.labelX = labelX;
  }
  void setLabelY(String labelY) {
    this.frame.labelY = labelY;
  }
}
