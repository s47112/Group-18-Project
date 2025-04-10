//static float multiplier;

import java.util.*;
static class heatmapNormaliser {

  static HashMap<String, Integer> normalise(LinkedHashMap<String, Integer> lhm) 
  {
    
    HashMap<String, Integer> normalised_lhm = new HashMap<String, Integer>();
    int highestValue = 0;
    
    for (Map.Entry element : lhm.entrySet())
    {
      if ((int) element.getValue() > highestValue)      
        highestValue = (int) element.getValue();      
    }
    
    multiplier = (100 / (float) highestValue);
    int currentValue;
    
    for (Map.Entry element : lhm.entrySet()) 
    {
      currentValue = (int) element.getValue();
      normalised_lhm.put((String) element.getKey(), (int) Math.ceil(currentValue * multiplier));
    }
    
    return normalised_lhm;
  }
  
}
