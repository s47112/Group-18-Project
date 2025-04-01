import java.util.HashMap;
import java.util.Map;

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
  alaska = loadImage("Alaska.svg");
  arizona = loadImage("Arizona.svg");
  arkansas = loadImage("Arkansas.svg");
  california = loadImage("California.svg");
  colorado = loadImage("Colorado.svg");
  connecticut = loadImage("Connecticut.svg");
  delaware = loadImage("Delaware.svg");
  florida = loadImage("Florida.svg");
  georgia = loadImage("Georgia.svg");
  hawaii = loadImage("Hawaii.svg");
  idaho = loadImage("Idaho.svg");
  illinois = loadImage("Illinois.svg");
  indiana = loadImage("Indiana.svg");
  iowa = loadImage("Iowa.svg");
  kansas = loadImage("Kansas.svg");
  kentucky = loadImage("Kentucky.svg");
  lousiana = loadImage("Lousiana.svg");
  maine = loadImage("Maine.svg");
  maryland = loadImage("Maryland.svg");
  massachusets = loadImage("Massachusets.svg");
  michigan = loadImage("Michigan.svg");
  minnesota = loadImage("Minnesota.svg");
  mississippi = loadImage("Missippi.svg");
  missouri = loadImage("Missouri.svg");
  montana = loadImage("Montana.svg");
  nebraska = loadImage("Nebraska.svg");
  nevada = loadImage("Nevada.svg");
  newHampshire = loadImage("NewHampsire.svg");
  newJersey = loadImage("NewJersey.svg");
  newMexico = loadImage("NewMexico.svg");
  newYork = loadImage("NewYork.svg");
  northCarolina = loadImage("NorthCarolina.svg");
  northDakota = loadImage("NorthDakota.svg");
  ohio = loadImage("Ohio.svg");
  oklahoma = loadImage("Oklahoma.svg");
  oregon = loadImage("Oregon.svg");
  pennsylvania = loadImage("Pennsylvania.svg");
  rhodeIsland = loadImage("RhodeIsland.svg");
  southCarolina = loadImage("SouthCarolina.svg");
  southDakota = loadImage("SouthDakota.svg");
  tennessee = loadImage("tennessee.svg");
  texas = loadImage("Texas.svg");
  utah = loadImage("Utah.svg");
  vermont = loadImage("Vermont.svg");
  virginia = loadImage("Virginia.svg");
  washington = loadImage("Washington.svg");
  westVirginia = loadImage("WestVirginia.svg");
  wisconsin = loadImage("Wisconsin.svg");
  wyoming = loadImage("Wyoming.svg");

  stateValues = new HashMap<String, Integer>();
  //stateValues.put("Alabama", <value>) format
}

void draw() {

  background(255);
  image(usa_map, 0, 0, 900, 600);

  //draw each state and colour it basd on given value
  drawStateImage(alabama, "Alabama", 50, 100);
  drawStateImage(alaska, "Alaska", 50, 100);
  drawStateImage(arizona, "Arizona", 50, 100);
  drawStateImage(arkansas, "Arkansas", 50, 100);
  drawStateImage(california, "California", 50, 100);
  drawStateImage(colorado, "Colorado", 50, 100);
  drawStateImage(connecticut, "Connecticut", 50, 100);
  drawStateImage(delaware, "Delaware", 50, 100);
  drawStateImage(florida, "Florida", 50, 100);
  drawStateImage(georgia, "Georgia", 50, 100);
  drawStateImage(hawaii, "Hawaii", 50, 100);
  drawStateImage(idaho, "Idaho", 50, 100);
  drawStateImage(illinois, "Illinois", 50, 100);
  drawStateImage(indiana, "Indiana", 50, 100);
  drawStateImage(iowa, "Iowa", 50, 100);
  drawStateImage(kansas, "Kansas", 50, 100);
  drawStateImage(kentucky, "Kentucky", 50, 100);
  drawStateImage(lousiana, "Lousiana", 50, 100);
  drawStateImage(maine, "Maine", 50, 100);
  drawStateImage(maryland, "Maryland", 50, 100);
  drawStateImage(massachusets, "Massachusents", 50, 100);
  drawStateImage(michigan, "Michigan", 50, 100);
  drawStateImage(minnesota, "Minnesota", 50, 100);
  drawStateImage(mississippi, "Mississippi", 50, 100);
  drawStateImage(missouri, "Missouri", 50, 100);
  drawStateImage(montana, "Montana", 50, 100);
  drawStateImage(nebraska, "Nebraska", 50, 100);
  drawStateImage(nevada, "Nevada", 50, 100);
  drawStateImage(newHampshire, "New_Hampshire", 50, 100);
  drawStateImage(newJersey, "New_Hampshire", 50, 100);
  drawStateImage(newMexico, "New_Mexico", 50, 100);
  drawStateImage(newYork, "New_York", 50, 100);
  drawStateImage(northCarolina, "North_Carolina", 50, 100);
  drawStateImage(northDakota, "North_Dakota", 50, 100);
  drawStateImage(ohio, "Ohio", 50, 100);
  drawStateImage(oklahoma, "Oklahoma", 50, 100);
  drawStateImage(oregon, "Oregon", 50, 100);
  drawStateImage(pennsylvania, "Pennsylvania", 50, 100);
  drawStateImage(rhodeIsland, "Rhode_Island", 50, 100);
  drawStateImage(southCarolina, "South_Carolina", 50, 100);
  drawStateImage(southDakota, "SOuth_Dakota", 50, 100);
  drawStateImage(tennessee, "Tennessee", 50, 100);
  drawStateImage(texas, "Texas", 50, 100);
  drawStateImage(utah, "Utah", 50, 100);
  drawStateImage(vermont, "Vermont", 50, 100);
  drawStateImage(virginia, "Virginia", 50, 100);
  drawStateImage(washington, "Washington", 50, 100);
  drawStateImage(westVirginia, "West_Virginia", 50, 100);
  drawStateImage(wisconsin, "Wisconsin", 50, 100);
  drawStateImage(wyoming, "Wyoming", 50, 100);

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

  color stateColor = lerpColor(color (0, 255, 0), color(255, 0, 0), map(value, 0, 100, 0, 1));
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
