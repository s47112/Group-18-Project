import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.HashMap;
import java.util.Map;

ArrayList<Widget> widgets;
PFont welcomeFont;
Screen homescreen, graphScreen, currentScreen;
Screen modeSelectScreen, tableScreen, heatmapScreen, piechartScreen;
ArrayList<Flight> currentFilteredFlights;
String currentTitle = "";
TextTable table1;
funLines funlines; 
Reader r = new Reader();

LinkedHashMap<String, Integer> dataMap;

void setup() {
    size(1000, 1000);
    funlines = new funLines();
    welcomeFont = createFont("Consolas", 50);
    textFont(welcomeFont);
    homescreen = new Screen(color(255, 255, 255));
   
   // user navigation buttons following color scheme
    homescreen.addWidget(new Widget(100, 300, 150, 60, "Unfiltered", color(126, 162, 255)));
    homescreen.addWidget(new Widget(300, 300, 150, 60, "Cancelled", color(120, 94, 240)));
    homescreen.addWidget(new Widget(500, 300, 150, 60, "Delayed", color(220, 38, 127)));
    homescreen.addWidget(new Widget(700, 300, 150, 60, "Diverted", color(255, 176, 0)));
    currentScreen = homescreen;
}

void draw() {
  funlines.draw();
     if (currentScreen == tableScreen || currentScreen == homescreen || currentScreen == modeSelectScreen)
      funlines.draw();
    currentScreen.draw();
   
}

// method for displaying text
void displayMessage(String message, int textColor) {
    fill(textColor);
    textFont(welcomeFont);
    textSize(50);
    textAlign(CENTER, CENTER);
    text(message, width / 2, height / 6);
}

void mousePressed() {
    Widget clicked = currentScreen.getEvent();

// functionality of each of the buttons
    if (clicked != null) {
        // cancelled flights
        if (clicked.label.equals("Cancelled")) {
            currentFilteredFlights = new Reader().readIn(1, 0, "cancelled, 1");
            currentTitle = "Cancelled Flights";
            setupModeSelectScreen();
            currentScreen = modeSelectScreen;
         // delayed flights
        } else if (clicked.label.equals("Delayed")) {
            ArrayList<Flight> all = new Reader().readIn(1, 0, "n/a");
            ArrayList<Flight> delayed = new ArrayList<Flight>();
         // find the delayed flights in the data
            for (Flight f : all) {
                try {
                    int sched = Integer.parseInt(f.scheduledDepartureTime.trim());
                    int actual = Integer.parseInt(f.actualDepartureTime.trim());
                    if (actual > sched) delayed.add(f);
                } catch (Exception e) {}
            }
            currentFilteredFlights = delayed;
            currentTitle = "Delayed Flights";
            setupModeSelectScreen();
            currentScreen = modeSelectScreen;

          // diverted flights
        } else if (clicked.label.equals("Diverted")) {
            currentFilteredFlights = new Reader().readIn(1, 0, "diverted, 1");
            currentTitle = "Diverted Flights";
            setupModeSelectScreen();
            currentScreen = modeSelectScreen;
            
          // unfiltered flights/ all data
        } else if (clicked.label.equals("Unfiltered")) {
            currentFilteredFlights = new Reader().readIn(1, 0, "n/a");
            currentTitle = "All Flights";
            setupModeSelectScreen();
            currentScreen = modeSelectScreen;        
            
            // if user selects graph representation
        } else if (clicked.label.equals("Graph")) {
            dataMap = countBy(currentFilteredFlights);
            graphScreen = new Screen(color(255));
            graphScreen.graph = new Graph(dataMap);
            graphScreen.graph.setTitle(currentTitle + " by Origin State");
            graphScreen.addWidget(new Widget(width - 120, 50, 100, 50, "Back", colourArray[0])); // back button for the page
            currentScreen = graphScreen;

           // if user selects table representation
        } else if (clicked.label.equals("Table")) {
            tableScreen = new Screen(color(255));
            tableScreen.addWidget(new Widget(width - 120, 50, 100, 50, "Back", colourArray[0])); // back button for the page
            table1 = new TextTable(10, currentFilteredFlights, 130, 250, 25, 130);
            currentScreen = tableScreen;
            
            // if user selects pie chart representation
        } else if (clicked.label.equals("Pie Chart")) {
            dataMap = countBy(currentFilteredFlights);
            piechartScreen = new Screen(color(255));
            piechartScreen.addWidget(new Widget(width - 120, 50, 100, 50, "Back", colourArray[0])); // back button for the page
            piechartScreen.chart = new PieChart(dataMap);
            currentScreen = piechartScreen;


            // if user selects heatmap representation
        } else if (clicked.label.equals("Heatmap")) {
            heatmapScreen = new Screen(color(255));
            currentScreen = heatmapScreen;
            dataMap = countBy(currentFilteredFlights);
            heatmapScreen.heatmap = new HeatMap(dataMap);
            heatmapScreen.addWidget(new Widget(width - 120, 50, 100, 50, "Back", colourArray[0])); // back button for the page
            

        } else if (clicked.label.equals("Back")) { // back button
            currentScreen = homescreen;
        }
    }
    if(currentScreen == tableScreen){
      table1.mousePressed();
    }
}

void keyPressed(){
  table1.keyPressed();
}

void mouseMoved() {
    redraw();
}


// class for the buttons
class Widget {
    int x, y, w, h;
    String label;
    boolean hovered;
    color buttonColor;

//constructor
    Widget(int x, int y, int w, int h, String label, color buttonColor) {
        this.x = x;
        this.y = y;
        this.w = w;
        this.h = h;
        this.label = label;
        this.buttonColor = buttonColor;
    }

    void display() {
        stroke(hovered ? color(255) : color(0));
        fill(buttonColor);
        rect(x, y, w, h, 10);
        fill(0);
        textAlign(CENTER, CENTER);
        textSize(22);
        text(label, x + w / 2, y + h / 2);
    }

    void isHovered() {
        hovered = mouseX > x && mouseX < x + w && mouseY > y && mouseY < y + h;
    }
    boolean isClicked() {
        return hovered;
    }
}


// class for each screen
class Screen {
    ArrayList<Widget> widgets;
    int bgColor;
    
    // screens
    Graph graph;
    HeatMap heatmap;
    PieChart chart;

    Screen(int bgColor) { // constructor
        this.bgColor = bgColor;
        widgets = new ArrayList<>(); //arraylist of buttons
    }

    void addWidget(Widget w) {
        widgets.add(w);
    }

    void draw() {
      
        background(bgColor);
        funlines.draw();
        for (Widget w : widgets) {
          // animation of widgets
            w.isHovered();
            w.display(); 
        }

      // handling drawing of each screen
        if (currentScreen == homescreen) {
            displayMessage("Welcome to Flight Explorer", color(0, 0, 0));
            
        } else if (currentScreen == graphScreen && graph != null) {
            graph.draw();
        }
        else if (currentScreen == heatmapScreen && heatmap != null) {
          heatmap.drawFullHeatMap();
        }
        else if (currentScreen == piechartScreen && chart != null){
          chart.draw();
        }else if (currentScreen == tableScreen && table1 != null) {
          table1.draw();
          
        }
    }

// functionality of buttons/widgets for user navigation
    Widget getEvent() {
        for (Widget w : widgets) {
            if (w.isClicked()) return w;
        }
        return null;
    }
}

// 
LinkedHashMap<String, Integer> countBy(ArrayList<Flight> flights) {
    LinkedHashMap<String, Integer> map = new LinkedHashMap<>();
    for (Flight f : flights) {
        String key = f.originState;
        if (!map.containsKey(key)) {
            map.put(key, 1);
        } else {
            map.put(key, map.get(key) + 1);
        }
    }
    return map;
}

void setupModeSelectScreen() {
    modeSelectScreen = new Screen(color(255));
    modeSelectScreen.addWidget(new Widget(400, 300, 140, 60, "Graph", colourArray[1]));
    modeSelectScreen.addWidget(new Widget(400, 400, 140, 60, "Table", colourArray[2]));
    modeSelectScreen.addWidget(new Widget(400, 500, 140, 60, "Heatmap", colourArray[0]));
    modeSelectScreen.addWidget(new Widget(400, 600, 140, 60, "Pie Chart", colourArray[3]));
    modeSelectScreen.addWidget(new Widget(width - 150, 50, 100, 50, "Back", colourArray[4]));
}
