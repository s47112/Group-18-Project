import java.util.HashMap;  // Import the HashMap class to manage state colors

PImage usa_map;  // The base map image
HashMap<String, StateHotspot> stateHotspots;  // Map for the clickable areas of states
HashMap<String, Integer> stateValues;  // Map to store the value for each state
HashMap<String, Integer> stateColors;  // Map to store the color for each state (using int instead of color)
String currentState = "";  // State currently hovered over
int screen = 0;  // Tracks the current screen (0 = map, 1 = state info screen)

void setup() {
  size(900, 600);  // Set canvas size
  usa_map = loadImage("usa_map.png");  // Load the USA map image
  
  // Initialize HashMaps
  stateHotspots = new HashMap<String, StateHotspot>();
  stateValues = new HashMap<String, Integer>();
  stateColors = new HashMap<String, Integer>();  // Initialize the stateColors HashMap (using int)

  // Example: Coordinates for states on the map (define bounding boxes)
  stateHotspots.put("Alabama", new StateHotspot(50, 100, 100, 100)); 
  stateHotspots.put("Alaska", new StateHotspot(150, 200, 100, 100));
  stateHotspots.put("California", new StateHotspot(200, 50, 120, 120));
  stateHotspots.put("Texas", new StateHotspot(300, 250, 140, 140));
  stateHotspots.put("Florida", new StateHotspot(500, 200, 80, 80));

  // Assign integer values for each state
  stateValues.put("Alabama", 45);
  stateValues.put("Alaska", 78);
  stateValues.put("California", 90);
  stateValues.put("Texas", 55);
  stateValues.put("Florida", 65);
  
  // Assign initial color based on the integer value
  updateStateColors();  // Initialize state colors
}

void draw() {
  background(255);  // White background

  if (screen == 0) {
    // Display the map screen
    image(usa_map, 0, 0, width, height);  // Draw the USA map image
    
    // Draw each state with dynamic colors based on values
    for (String state : stateHotspots.keySet()) {
      StateHotspot hotspot = stateHotspots.get(state);
      int stateColor = stateColors.get(state);  // Get the color based on value
      fill(stateColor);
      noStroke();
      rect(hotspot.x, hotspot.y, hotspot.width, hotspot.height);  // Draw the state region as a rectangle

      // Check if the mouse is over this state and show the state name
      if (isMouseOverState(hotspot)) {
        currentState = state;
      }
    }
    
    // Display the current state's name if hovered over
    if (!currentState.isEmpty()) {
      fill(0);
      textSize(16);
      text("Hovered over: " + currentState, 10, height - 30);  // Show state name
    }
  }
  else if (screen == 1) {
    // Display the state info screen
    fill(0);
    textSize(32);
    text("Information for: " + currentState, 10, 50);
    textSize(16);
    text("More details for the selected state can go here.", 10, 100);
  }
}

void mousePressed() {
  if (screen == 0) {
    // Check if a state was clicked to switch to the second screen
    for (String state : stateHotspots.keySet()) {
      StateHotspot hotspot = stateHotspots.get(state);
      if (isMouseOverState(hotspot)) {
        currentState = state;  // Set the current state
        screen = 1;  // Switch to the state info screen
        break;
      }
    }
  } 
  else if (screen == 1) {
    // Back to the map screen from state info screen
    screen = 0;
    currentState = "";  // Clear current state when returning
  }
}

boolean isMouseOverState(StateHotspot hotspot) {
  return mouseX > hotspot.x && mouseX < hotspot.x + hotspot.width &&
         mouseY > hotspot.y && mouseY < hotspot.y + hotspot.height;
}

void updateStateColors() {
  // Iterate through each state and update its color based on the integer value
  for (String state : stateValues.keySet()) {
    int value = stateValues.get(state);
    
    // Map the value to a color (green for low values, red for high values)
    int stateColor = lerpColor(color(0, 255, 0), color(255, 0, 0), map(value, 0, 100, 0, 1)); 
    stateColors.put(state, stateColor);  // Store the color for the state (using int)
  }
}

// Custom class to define the rectangular area for each state
class StateHotspot {
  float x, y, width, height;
  
  // Constructor to initialize the rectangle's position and size
  StateHotspot(float x, float y, float width, float height) {
    this.x = x;
    this.y = y;
    this.width = width;
    this.height = height;
  }
}
