import java.util.HashMap;
import java.util.Map;

final int SCREENX = 1000;
final int SCREENY = 800;


PImage usa_map;
Map<String, PImage> stateImages;
Map<String, Integer> stateValues;
HashMap<String, PVector> stateCoordinates = new HashMap<String, PVector>();

String currentState = ""; // sgtate currently hoveres over
int screen = 0; //tranck current scrn (0= map, 1 = other)


void settings()
{
  size(SCREENX, SCREENY);
}

void setup()
{
  //usa_map = loadImage("usa_map.png");
  
  stateCoordinates.put("Alabama", new PVector(400,350));
  stateCoordinates.put("Alaska", new PVector(400,350));
  stateCoordinates.put("Arizona", new PVector(400,350));
  stateCoordinates.put("Arkansas", new PVector(400,350));
  stateCoordinates.put("California", new PVector(-110,180));
  stateCoordinates.put("Colorado", new PVector(400,350));
  stateCoordinates.put("Connecticut", new PVector(400,350));
  stateCoordinates.put("Delaware", new PVector(400,350));
  stateCoordinates.put("FLorida", new PVector(400,350));
  stateCoordinates.put("Georgia", new PVector(400,350));
  stateCoordinates.put("Hawaii", new PVector(400,350));
  stateCoordinates.put("Idaho", new PVector(60,20));
  stateCoordinates.put("Illinois", new PVector(400,350));
  stateCoordinates.put("Indiana", new PVector(400,350));
  stateCoordinates.put("Iowa", new PVector(400,350));
  stateCoordinates.put("Kansas", new PVector(400,350));
  stateCoordinates.put("Kentucky", new PVector(400,350));
  stateCoordinates.put("Louisiana", new PVector(400,350));
  stateCoordinates.put("Maine", new PVector(400,350));
  stateCoordinates.put("Maryland", new PVector(400,350));
  stateCoordinates.put("Massachusetts", new PVector(400,350));
  stateCoordinates.put("Michigan", new PVector(400,350));
  stateCoordinates.put("Minnesota", new PVector(400,350));
  stateCoordinates.put("Mississippi", new PVector(400,350));
  stateCoordinates.put("Missouri", new PVector(400,350));
  stateCoordinates.put("Montana", new PVector(140,-37));
  stateCoordinates.put("Nebraska", new PVector(400,350));
  stateCoordinates.put("Nevada", new PVector(-60,240));
  stateCoordinates.put("New_Hamshire", new PVector(400,350));
  stateCoordinates.put("New_Jersey", new PVector(400,350));
  stateCoordinates.put("New_Mexico", new PVector(400,350));
  stateCoordinates.put("New_York", new PVector(400,350));
  stateCoordinates.put("North_Carolina", new PVector(400,350));
  stateCoordinates.put("North_Dakota", new PVector(60,60));
  stateCoordinates.put("Ohio", new PVector(400,350));
  stateCoordinates.put("Oklahoma", new PVector(400,350));
  stateCoordinates.put("Oregon", new PVector(-27,123));
  stateCoordinates.put("Pennsylvania", new PVector(400,350));
  stateCoordinates.put("Rhode_Island", new PVector(400,350));
  stateCoordinates.put("South_Carolina", new PVector(400,350));
  stateCoordinates.put("South_Dakota", new PVector(400,350));
  stateCoordinates.put("Tennessee", new PVector(400,350));
  stateCoordinates.put("Texas", new PVector(400,350));
  stateCoordinates.put("Utah", new PVector(78,150));
  stateCoordinates.put("Vermont", new PVector(400,350));
  stateCoordinates.put("Virginia", new PVector(400,350));
  stateCoordinates.put("Washington", new PVector(-20,-10));
  stateCoordinates.put("West_Virginia", new PVector(400,350));
  stateCoordinates.put("Wisconsin", new PVector(400,350));
  stateCoordinates.put("Wyoming", new PVector(178,138));
  
  
  stateImages = new HashMap<String, PImage>();
  stateImages.put("Alabama", loadImage("Alabama.png"));
  stateImages.put("Alaska", loadImage("Alaska.png"));
  stateImages.put("Arizona", loadImage("Arizona.png"));
  stateImages.put("Arkansas", loadImage("Arkansas.png"));
  stateImages.put("California", loadImage("California.png"));
  stateImages.put("Colorado", loadImage("Colorado.png"));
  stateImages.put("Connecticut", loadImage("Connecticut.png"));
  stateImages.put("Delaware", loadImage("Delaware.png"));
  stateImages.put("Florida", loadImage("Florida.png"));
  stateImages.put("Georgia", loadImage("Georgia.png"));
  stateImages.put("Hawaii", loadImage("Hawaii.png"));
  stateImages.put("Idaho", loadImage("Idaho.png"));
  stateImages.put("Illinois", loadImage("Illinois.png"));
  stateImages.put("Indiana", loadImage("Indiana.png"));
  stateImages.put("Iowa", loadImage("Iowa.png"));
  stateImages.put("Kansas", loadImage("Kansas.png"));
  stateImages.put("Kentucky", loadImage("Kentucky.png"));
  stateImages.put("Louisiana", loadImage("Louisiana.png"));
  stateImages.put("Maine", loadImage("Maine.png"));
  stateImages.put("Maryland", loadImage("Maryland.png"));
  stateImages.put("Massachusetts", loadImage("Massachusetts.png"));
  stateImages.put("Michigan", loadImage("Michigan.png"));
  stateImages.put("Minnesota", loadImage("Minnesota.png"));
  stateImages.put("Mississippi", loadImage("Missippi.png"));
  stateImages.put("Missouri", loadImage("Missouri.png"));
  stateImages.put("Montana", loadImage("Montana.png"));
  stateImages.put("Nebraska", loadImage("Nebraska.png"));
  stateImages.put("Nevada", loadImage("Nevada.png"));
  stateImages.put("New Hampshire", loadImage("NewHampshire.png"));
  stateImages.put("New Jersey", loadImage("NewJersey.png"));
  stateImages.put("New Mexico", loadImage("NewMexico.png"));
  stateImages.put("New York", loadImage("NewYork.png"));
  stateImages.put("North Carolina", loadImage("NorthCarolina.png"));
  stateImages.put("North Dakota", loadImage("NorthDakota.png"));
  stateImages.put("Ohio", loadImage("Ohio.png"));
  stateImages.put("Oklahoma", loadImage("Oklahoma.png"));
  stateImages.put("Oregon", loadImage("Oregon.png"));
  stateImages.put("Pennsylvania", loadImage("Pennsylvania.png"));
  stateImages.put("Rhode Island", loadImage("RhodeIsland.png"));
  stateImages.put("South Carolina", loadImage("SouthCarolina.png"));
  stateImages.put("South Dakota", loadImage("SouthDakota.png"));
  stateImages.put("Tennessee", loadImage("Tennessee.png"));
  stateImages.put("Texas", loadImage("Texas.png"));
  stateImages.put("Utah", loadImage("Utah.png"));
  stateImages.put("Vermont", loadImage("Vermont.png"));
  stateImages.put("Virginia", loadImage("Virginia.png"));
  stateImages.put("Washington", loadImage("Washington.png"));
  stateImages.put("West Virginia", loadImage("WestVirginia.png"));
  stateImages.put("Wisconsin", loadImage("Wisconsin.png"));
  stateImages.put("Wyoming", loadImage("Wyoming.png"));

  stateValues = new HashMap<String, Integer>();
  //stateValues.put("Alabama", <value>) format
  
  for (String state : stateImages.keySet())
  {
    stateValues.put(state, (int) random (0,100)); // !!!!!SO FAR RANDOM NUMBERS - WILL BE A VALUE FROM THE FILE
    
  }
    
}

void draw() {
  
 
  background(255); //<>//
  //image(usa_map, 0, 0, SCREENX, SCREENY);
  
  for (String state : stateImages.keySet()) {
    
    PImage stateImage = stateImages.get(state);
    
    PVector position = stateCoordinates.get(state);
    
    if(position != null)
    {
      drawStateImage(stateImage, state, position.x, position.y);
    }
    
  }

  if (!currentState.isEmpty())
  {
    displayStateInfo(currentState);
  }

  frameRate(60);
}

void drawStateImage(PImage stateImage, String stateName, float xPos, float yPos)
{
  int value = stateValues.get(stateName);

  //mapping value to a colour - green -> red

  color stateColor = lerpColor(color (0, 255, 0), color(255, 0, 0), map(value, 0, 100, 0, 1)); // 5 = value input
  tint(stateColor); //apply colour to state img
  image(stateImage, xPos, yPos);
  noTint(); //reset tint

  //simplified collision detecttion
  if (mouseOverState(stateImage, xPos, yPos))
  {
    currentState = stateName;
  }
}

boolean mouseOverState(PImage stateImage, float xPos, float yPos)
{
  return mouseX > xPos && mouseX< xPos + stateImage.width && mouseY < yPos + stateImage.height;
}

void displayStateInfo(String stateName)
{
  fill(0);
  textSize(16);
  text("state: " + stateName, 10, SCREENY - 30);
}

void mousePressed()
{
  if (!currentState.isEmpty())
  {
    //handle click event
    println("clicked on: " + currentState);
    screen = 1;// screen change
  }
}
