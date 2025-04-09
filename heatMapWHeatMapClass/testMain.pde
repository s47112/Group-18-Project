//lhm.put("key",value);

LinkedHashMap<String, Integer> lhm = new LinkedHashMap<String, Integer>();

HeatMap chair;

final int SCREENX = 1000;
final int SCREENY = 1000;

void setup(){
lhm.put("California", 100);

chair = new HeatMap(lhm);

}

void settings()
{
  size(SCREENX, SCREENY);
}

void draw() {
  background(255);
  chair.draw();
}
