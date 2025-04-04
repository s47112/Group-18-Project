import java.util.HashMap;
import java.util.Map;

final int SCREENX = 1100;
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
  
  stateCoordinates.put("Alabama", new PVector(523,290));
  stateCoordinates.put("Alaska", new PVector(-10,450));
  stateCoordinates.put("Arizona", new PVector(75,220));
  stateCoordinates.put("Arkansas", new PVector(417,277));
  stateCoordinates.put("California", new PVector(-110,180));
  stateCoordinates.put("Colorado", new PVector(190,127));
  stateCoordinates.put("Connecticut", new PVector(708,35));
  stateCoordinates.put("Delaware", new PVector(682,104));
  stateCoordinates.put("FLorida", new PVector(400,350));
  stateCoordinates.put("Georgia", new PVector(580,276));
  stateCoordinates.put("Hawaii", new PVector(220,480));
  stateCoordinates.put("Idaho", new PVector(60,20));
  stateCoordinates.put("Illinois", new PVector(457,143));
  stateCoordinates.put("Indiana", new PVector(509,135));
  stateCoordinates.put("Iowa", new PVector(390,95));
  stateCoordinates.put("Kansas", new PVector(220,135));
  stateCoordinates.put("Kentucky", new PVector(527,177));
  stateCoordinates.put("Louisiana", new PVector(434,347));
  stateCoordinates.put("Maine", new PVector(745,-50));
  stateCoordinates.put("Maryland", new PVector(652,110));
  stateCoordinates.put("Massachusetts", new PVector(717,28));
  stateCoordinates.put("Michigan", new PVector(485,81));
  stateCoordinates.put("Minnesota", new PVector(390,55));
  stateCoordinates.put("Mississippi", new PVector(470,297));
  stateCoordinates.put("Missouri", new PVector(403,255));
  stateCoordinates.put("Montana", new PVector(140,-37));
  stateCoordinates.put("Nebraska", new PVector(290,50));
  stateCoordinates.put("Nevada", new PVector(-60,240));
  stateCoordinates.put("New_Hampshire", new PVector(715,-15));
  stateCoordinates.put("New_Jersey", new PVector(687,77));
  stateCoordinates.put("New_Mexico", new PVector(54,245));
  stateCoordinates.put("New_York", new PVector(658,18));
  stateCoordinates.put("North_Carolina", new PVector(625,195));
  stateCoordinates.put("North_Dakota", new PVector(340,128));
  stateCoordinates.put("Ohio", new PVector(560,110));
  stateCoordinates.put("Oklahoma", new PVector(250,184));
  stateCoordinates.put("Oregon", new PVector(-27,123));
  stateCoordinates.put("Pennsylvania", new PVector(637,80));
  stateCoordinates.put("Rhode_Island", new PVector(725,30));
  stateCoordinates.put("South_Carolina", new PVector(618,248));
  stateCoordinates.put("South_Dakota", new PVector(399,197));
  stateCoordinates.put("Tennessee", new PVector(525,218));
  stateCoordinates.put("Texas", new PVector(290,341));
  stateCoordinates.put("Utah", new PVector(78,150));
  stateCoordinates.put("Vermont", new PVector(690,-10));
  stateCoordinates.put("Virginia", new PVector(627,153));
  stateCoordinates.put("Washington", new PVector(-20,-10));
  stateCoordinates.put("West_Virginia", new PVector(609,135));
  stateCoordinates.put("Wisconsin", new PVector(442,33));
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
  stateImages.put("New_Hampshire", loadImage("NewHampshire.png"));
  stateImages.put("New_Jersey", loadImage("NewJersey.png"));
  stateImages.put("New_Mexico", loadImage("NewMexico.png"));
  stateImages.put("New_York", loadImage("NewYork.png"));
  stateImages.put("North_Carolina", loadImage("NorthCarolina.png"));
  stateImages.put("North_Dakota", loadImage("NorthDakota.png"));
  stateImages.put("Ohio", loadImage("Ohio.png"));
  stateImages.put("Oklahoma", loadImage("Oklahoma.png"));
  stateImages.put("Oregon", loadImage("Oregon.png"));
  stateImages.put("Pennsylvania", loadImage("Pennsylvania.png"));
  stateImages.put("Rhode_Island", loadImage("RhodeIsland.png"));
  stateImages.put("South_Carolina", loadImage("SouthCarolina.png"));
  stateImages.put("South_Dakota", loadImage("SouthDakota.png"));
  stateImages.put("Tennessee", loadImage("Tennessee.png"));
  stateImages.put("Texas", loadImage("Texas.png"));
  stateImages.put("Utah", loadImage("Utah.png"));
  stateImages.put("Vermont", loadImage("Vermont.png"));
  stateImages.put("Virginia", loadImage("Virginia.png"));
  stateImages.put("Washington", loadImage("Washington.png"));
  stateImages.put("West_Virginia", loadImage("WestVirginia.png"));
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
