import java.util.*; //<>//

Graph graph;
Reader r;
Normaliser norm;
static float multiplier;
static LinkedHashMap<String, Integer> lhm = new LinkedHashMap<String, Integer>();
static String[] states = {"AL", "AK", "AS", "AZ", "AR", "CA", "CO", "CT", "DE", "FL", "GA", "HI", "ID", "IL", "IN", "IA", "KS", "KY", "LA", "ME", "MD", "MA", "MI", "MN", "MS", "MO", "MT", "NE", "NV", "NH", "NJ", "NM", "NY", "NC", "ND", "OH", "OK", "OR", "PA", "SC", "SD", "TN", "TX", "UT", "VT", "VA", "WA", "WV", "WI", "WY"};
static ArrayList<ArrayList> flightsByState = new ArrayList<ArrayList>();
static ArrayList<Flight> flights = new ArrayList<Flight>();

void setup() {
  size(500,500);
  windowResize(SCREENX, SCREENY);
  PFont font;
  font = createFont("Consolas", 128);
  textFont(font);
 
  r = new Reader();
  norm = new Normaliser();
  
  lhm = norm.normalisingData(r);
 
  graph = new Graph(lhm, multiplier);
}

void draw() {
  background(255);
  graph.draw();

  }
