import java.util.*;
static float multiplier;

class PieChart {
  int diameter = width - (width / 10);
  LinkedHashMap<String, Float> angles;
  
  PieChart(LinkedHashMap<String, Integer> values) {
    this.angles = normalise(values);
  }
  
  void draw() {
    
    int i = 0;
    float lastAngle = 0;
    for (Map.Entry element : angles.entrySet())
    {
      fill(colourArray[i%5]);
      if ((i == angles.size() - 1) && (i%5 == 0)) {
        fill(colourArray[2]);
      }
        
      
      float currentAngle = radians((float) element.getValue());
      
      //chart
      arc(width/2, height/2, diameter, diameter, 
          lastAngle, lastAngle+currentAngle);
          
      //text
      fill(50);
      textSize(25 - angles.size()/4);
      textAlign(CENTER);
      translate(width/2, height/2);
      rotate(radians(90) + lastAngle + currentAngle/2);
      text((String) element.getKey(), 0, -(diameter/2));
      
      //reset rotation and translation
      rotate(-(radians(90) + lastAngle + currentAngle/2));
      translate(-width/2, -height/2);
      
      i++;
      lastAngle += currentAngle;
    }
    

  }
  
  
  LinkedHashMap<String, Float> normalise(LinkedHashMap<String, Integer> lhm) 
  {
    
    LinkedHashMap<String, Float> normalised_lhm = new LinkedHashMap<String, Float>();
    
    int totalValue = 0;
    for (Map.Entry element : lhm.entrySet()) 
      totalValue += (int) element.getValue();    
    
    
    multiplier = (360 / (float) totalValue);
    int currentValue;
    for (Map.Entry element : lhm.entrySet()) 
    {
      currentValue = (int) element.getValue();
      normalised_lhm.put((String) element.getKey(), (float) currentValue * multiplier);
    }
    
    return normalised_lhm;
  }
}
