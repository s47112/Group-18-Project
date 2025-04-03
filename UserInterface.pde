ArrayList<Widget> widgets;
PFont welcomeFont;
import java.util.LinkedHashMap;
import java.util.Map;

Screen homescreen, graphScreen, currentScreen;

void setup() {
    size(1100, 1000);
    welcomeFont = createFont("Consolas", 50);
    textFont(welcomeFont);
    homescreen = new Screen(color(255, 255, 255));

    // widgets
    homescreen.addWidget(new Widget(200, 300, 130, 60, "Cancelled", color(126, 162, 255)));
    homescreen.addWidget(new Widget(400, 300, 130, 60, "Delayed", color(220, 38, 127)));
    homescreen.addWidget(new Widget(600, 300, 130, 60, "Diverted", color(255, 97, 0)));
    homescreen.addWidget(new Widget(800, 300, 130, 60, "Unfiltered", color(255, 97, 0)));

    currentScreen = homescreen;
}

void draw() {
    currentScreen.draw();
}

// welcome message
void displayMessage(String message, int textColor) {
    fill(textColor);
    textFont(welcomeFont);
    textSize(50);
    textAlign(CENTER, CENTER);
    text(message, width / 2, height / 6);
}

void mousePressed() {
    Widget clicked = currentScreen.getEvent();
    if (clicked != null) {
        if (clicked.label.equals("Cancelled")) {
            ArrayList<Flight> filtered = new Reader().readIn(1, 0, "cancelled, 1");
            LinkedHashMap<String, Integer> dataMap = countBy(filtered);
            graphScreen = new Screen(color(255));
            graphScreen.graph = new Graph(dataMap);
            graphScreen.graph.setTitle("Cancelled Flights by Origin State");
            graphScreen.addWidget(new Widget(width - 150, 50, 100, 50, "Back", color(220, 220, 220))); // back button
            currentScreen = graphScreen;
        } else if (clicked.label.equals("Delayed")) {
            ArrayList<Flight> all = new Reader().readIn(1, 0, "n/a"); // unfiltered flights list
            ArrayList<Flight> delayed = new ArrayList<Flight>(); // arraylist for delayed flights
            for (Flight f : all) {
                try { // check if a flight is delayed
                    int sched = Integer.parseInt(f.scheduledDepartureTime.trim());
                    int actual = Integer.parseInt(f.actualDepartureTime.trim());
                    if (actual > sched) {
                        delayed.add(f);
                    }
                } catch (Exception e) {
                }
            }
            LinkedHashMap<String, Integer> dataMap = countBy(delayed);
            graphScreen = new Screen(color(255));
            graphScreen.graph = new Graph(dataMap);
            graphScreen.graph.setTitle("Delayed Flights by Origin State");
            graphScreen.addWidget(new Widget(width - 150, 50, 100, 50, "Back", color(220, 220, 220)));
            currentScreen = graphScreen;
        } else if (clicked.label.equals("Diverted")) {
            ArrayList<Flight> filtered = new Reader().readIn(1, 0, "diverted, 1");
            LinkedHashMap<String, Integer> dataMap = countBy(filtered);
            graphScreen = new Screen(color(255));
            graphScreen.graph = new Graph(dataMap);
            graphScreen.graph.setTitle("Diverted Flights by Origin State");
            graphScreen.addWidget(new Widget(width - 150, 50, 100, 50, "Back", color(220, 220, 220)));
            currentScreen = graphScreen;
        } else if (clicked.label.equals("Back")) {
            currentScreen = homescreen;
        }else if (clicked.label.equals("Unfiltered")){
          
        }
    }
}

void mouseMoved() {
    redraw();
}
// widget stuff not program specific
class Widget {
    int x, y, w, h;
    String label;
    boolean hovered;
    color buttonColor;

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

class Screen {
    ArrayList<Widget> widgets;
    int bgColor;
    Graph graph;

    Screen(int bgColor) {
        this.bgColor = bgColor;
        widgets = new ArrayList<>();
    }

    void addWidget(Widget w) {
        widgets.add(w);
    }

    void draw() {
        background(bgColor);
        for (Widget w : widgets) {
            w.isHovered();
            w.display();
        }

        if (currentScreen == homescreen) {
            displayMessage("Welcome to Flight Explorer", color(0, 0, 0));
        } else if (graph != null) {
            graph.draw();
        }
    }

    Widget getEvent() {
        for (Widget w : widgets) {
            if (w.isClicked()) return w;
        }
        return null;
    }
}

// groups flights by origin state, summarises filtered list from  Reader flightObject
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
