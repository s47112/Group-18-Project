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
  
  stateCoordinates.put("Alabama", new PVector(506,273));
  stateCoordinates.put("Alaska", new PVector(-10,450));
  stateCoordinates.put("Arizona", new PVector(74,211));
  stateCoordinates.put("Arkansas", new PVector(407,264));
  stateCoordinates.put("California", new PVector(-103,171));
  stateCoordinates.put("Colorado", new PVector(187,120));
  stateCoordinates.put("Connecticut", new PVector(681,32));
  stateCoordinates.put("Delaware", new PVector(682,104));
  stateCoordinates.put("Florida", new PVector(567,348));
  stateCoordinates.put("Georgia", new PVector(560,259));
  stateCoordinates.put("Hawaii", new PVector(220,480));
  stateCoordinates.put("Idaho", new PVector(57,17));
  stateCoordinates.put("Illinois", new PVector(440,135));
  stateCoordinates.put("Indiana", new PVector(489,128));
  stateCoordinates.put("Iowa", new PVector(378,89));
  stateCoordinates.put("Kansas", new PVector(215,126));
  stateCoordinates.put("Kentucky", new PVector(506,167));
  stateCoordinates.put("Louisiana", new PVector(421,333));
  stateCoordinates.put("Maine", new PVector(705,-50));
  stateCoordinates.put("Maryland", new PVector(627,103));
  stateCoordinates.put("Massachusetts", new PVector(685,25));
  stateCoordinates.put("Michigan", new PVector(467,81));
  stateCoordinates.put("Minnesota", new PVector(376,53));
  stateCoordinates.put("Mississippi", new PVector(455,281));
  stateCoordinates.put("Missouri", new PVector(390,244));
  stateCoordinates.put("Montana", new PVector(134,-38));
  stateCoordinates.put("Nebraska", new PVector(282,46));
  stateCoordinates.put("Nevada", new PVector(-57,236));
  stateCoordinates.put("New_Hampshire", new PVector(683,-15));
  stateCoordinates.put("New_Jersey", new PVector(660,72));
  stateCoordinates.put("New_Mexico", new PVector(49,233));
  stateCoordinates.put("New_York", new PVector(633,16));
  stateCoordinates.put("North_Carolina", new PVector(604,181));
  stateCoordinates.put("North_Dakota", new PVector(333,129));
  stateCoordinates.put("Ohio", new PVector(537,103));
  stateCoordinates.put("Oklahoma", new PVector(242,172));
  stateCoordinates.put("Oregon", new PVector(-26,119));
  stateCoordinates.put("Pennsylvania", new PVector(611,75));
  stateCoordinates.put("Rhode_Island", new PVector(695,24));
  stateCoordinates.put("South_Carolina", new PVector(596,232));
  stateCoordinates.put("South_Dakota", new PVector(390,195));
  stateCoordinates.put("Tennessee", new PVector(506,204));
  stateCoordinates.put("Texas", new PVector(282,327));
  stateCoordinates.put("Utah", new PVector(77,145));
  stateCoordinates.put("Vermont", new PVector(662,-12));
  stateCoordinates.put("Virginia", new PVector(603,141));
  stateCoordinates.put("Washington", new PVector(-22,-12));
  stateCoordinates.put("West_Virginia", new PVector(585,126));
  stateCoordinates.put("Wisconsin", new PVector(426,32));
  stateCoordinates.put("Wyoming", new PVector(173,135));
  
  
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
