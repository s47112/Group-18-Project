import java.util.HashMap;

final int SCREENX = 900;
final int SCREENY = 600;

PImage usa_map = loadImage("usa_map");
PImage alabama = loadImage("Alabama.svg");
PImage alaska = loadImage("Alaska.svg");
PImage arizona = loadImage("Arizona.svg");
PImage arkansas = loadImage("Arkansas.svg");
PImage california = loadImage("California.svg");
PImage colorado = loadImage("Colorado.svg");
PImage connecticut = loadImage("Connecticut.svg");
PImage delaware = loadImage("Delaware.svg");
PImage florida = loadImage("Florida.svg");
PImage georgia = loadImage("Georgia.svg");
PImage hawaii = loadImage("Hawaii.svg");
PImage idaho = loadImage("Idaho.svg");
PImage illinois = loadImage("Illinois.svg");
PImage indiana = loadImage("Indiana.svg");
PImage iowa = loadImage("Iowa.svg");
PImage kansas = loadImage("Kansas.svg");
PImage kentucky = loadImage("Kentucky.svg");
PImage lousiana = loadImage("Lousiana.svg");
PImage maine = loadImage("Maine.svg");
PImage maryland = loadImage("Maryland.svg");
PImage massachusets = loadImage("Massachusets.svg");
PImage michigan = loadImage("Michigan.svg");
PImage minnesota = loadImage("Minnesota.svg");
PImage mississippi = loadImage("Missippi.svg");
PImage missouri = loadImage("Missouri.svg");
PImage montana = loadImage("Montana.svg");
PImage nebraska = loadImage("Nebraska.svg");
PImage nevada = loadImage("Nevada.svg");
PImage newHampshire = loadImage("NewHampsire.svg");
PImage newJersey = loadImage("NewJersey.svg");
PImage newMexico = loadImage("NewMexico.svg");
PImage newYork = loadImage("NewYork.svg");
PImage northCarolina = loadImage("NorthCarolina.svg");
PImage northDakota = loadImage("NorthDakota.svg");
PImage ohio = loadImage("Ohio.svg");
PImage oklahoma = loadImage("Oklahoma.svg");
PImage oregon = loadImage("Oregon.svg");
PImage pennsylvania = loadImage("Pennsylvania.svg");
PImage rhodeIsland = loadImage("RhodeIsland.svg");
PImage southCarolina = loadImage("SouthCarolina.svg");
PImage southDakota = loadImage("SouthDakota.svg");
PImage tennessee = loadImage("tennessee.svg");
PImage texas = loadImage("Texas.svg");
PImage utah = loadImage("Utah.svg");
PImage vermont = loadImage("Vermont.svg");
PImage virginia = loadImage("Virginia.svg");
PImage washington = loadImage("Washington.svg");
PImage westVirginia = loadImage("WestVirginia.svg");
PImage wisconsin = loadImage("Wisconsin.svg");
PImage wyoming = loadImage("Wyoming.svg");

HashMap<String, Integer> stateValues;
String currentState = ""; // sgtate currently hoveres over
int screen = 0; //tranck current scrn (0= map, 1 = other)


void settings()
{
  size(SCREENX, SCREENY);
}

void setup() 
{
  usa_map = loadImage("usa_map.png");

    alabama = loadImage("Alabama.svg");
  //the rest of the states
  
  stateValues = new HashMap<String, Integer>();
  //stateValues.put("Alabama", <value>) format
}

void draw() {
  
  background(255);
  image(usa_map, 0, 0, 900, 600);
  
  //draw each state and colour it basd on given value
  drawStateImage(alabama, "Alabama", 50, 100);
  //for all states
  
  if (!currentState.isEmpty())
  {
    displayStateInfo(currentState);
  }
 
  frameRate(60);
}

void drawStateImage(PImage stateImage, String stateName, float xPos, float Ypos)
{
  int value = stateValues.get(stateName);
  
  //mapping value to a colour - green -> red
  
  color stateColor = lerpColor(color (0, 255, 0), color(255, 0, 0), map(value, 0, 100, 0, 1));
  tint(stateColor); //apply colour to state img
  noTint(); //reset tint
  
  //simplified collision detecttion
  if(mouseOverState(stateImage, xPos, yPos))
  {
    currentState = statename;
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
