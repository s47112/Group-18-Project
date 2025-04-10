 //<>//
class Graph {
  
  Frame frame;
  Bar[] barArray;
  Normaliser normaliser = new Normaliser();
 
  void setTitle(String title) {
    this.frame.title = title;
  }
  void setLabelX(String labelX) {
    this.frame.labelX = labelX;
  }
  void setLabelY(String labelY) {
    this.frame.labelY = labelY;
  }
  
  Graph(LinkedHashMap<String, Integer> values) {
    frame = new Frame();
    setLabelY("State");
    setLabelX("Number of flights");
    // calculating gaps and widths, bar:gap = 3:1
    float totalGap = GRAPH_SIZE / 4;
    final float GAP_WIDTH = totalGap / (values.size() + 1);
    float totalBar = (GRAPH_SIZE / 4) * 3;
    final float BAR_WIDTH = totalBar / values.size();
    
    //initialising array of bars
    barArray = new Bar[values.size()];
    float ypos = MARGIN + GAP_WIDTH;
    int i = 0;
    for(Map.Entry value : values.entrySet()) {
      barArray[i] = new Bar(ypos, BAR_WIDTH, (int) value.getValue(), (String) value.getKey(), colourArray[i % 5]);
      ypos += BAR_WIDTH + GAP_WIDTH;
      i++;
    } 
    i=0;
    
    //normalises the hashMap values and sets the length of each bar accordingly
    for (Map.Entry normalisedLength : normaliser.normalise(values).entrySet()) {
      barArray[i].setLength((int) normalisedLength.getValue());
      i++;
    }
  }
  
  void draw() {
    fill(255);
    rect(MARGIN, MARGIN, GRAPH_SIZE, GRAPH_SIZE);
    frame.draw();
    for (Bar bar : barArray) {
      bar.draw();
    }
  }
  
  
}
