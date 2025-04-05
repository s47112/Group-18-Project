class Normaliser {
  
  LinkedHashMap<String, Integer> normalise(LinkedHashMap<String, Integer> lhm) 
  {
    
    LinkedHashMap<String, Integer> normalised_lhm = new LinkedHashMap<String, Integer>();
    
    int highestValue = 0;
    for (Map.Entry element : lhm.entrySet()) 
    {
      if ((int) element.getValue() > highestValue) 
        highestValue = (int) element.getValue();
    }
    
    // finds the multiplier necessary to set the highest value to be slightly smaller than the size of the graph.
    multiplier = ((float) GRAPH_SIZE - MARGIN) / (float) highestValue;
    int currentValue;
    
    //makes a new hashmap with normalised values
    for (Map.Entry element : lhm.entrySet()) 
    {
      currentValue = (int) (element.getValue());
      // Math.ceil rounds UP to the next integer.
      normalised_lhm.put((String) element.getKey(), (int) Math.ceil(currentValue * multiplier));
    }
    
    return normalised_lhm;
  }
}
