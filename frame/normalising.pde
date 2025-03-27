import java.util.*;

static class Normaliser {
  static public  LinkedHashMap normalisingData(Reader r) {
    String filterString;
    for(int i = 0; i < states.length; i++) {
      filterString = states[i];
      flights = r.readIn(1, 0, "origin state, " + filterString);
      flightsByState.add(flights);
    }
  
    float[] flightsFromState = new float[states.length];
    float largestValue = 0;
    for(int i = 0; i < states.length; i++) {
      flightsFromState[i] = Integer.valueOf((flightsByState.get(i)).size());
      if(flightsFromState[i] > largestValue) {
        largestValue = flightsFromState[i];
      }
    }
  
    multiplier = 0.8;
    int count = 0;
    while(largestValue > GRAPH_SIZE) {
       largestValue = largestValue * 0.8;
       for(int i = 0; i < states.length; i++) {
         flightsFromState[i] = (flightsFromState[i] * 0.8);
       }
       count++;
       
    }
    multiplier = pow(multiplier, count);
  
    for(int i = 0; i < states.length; i++) {
      lhm.put(states[i], (int)flightsFromState[i]);
      System.out.println(states[i] + String.valueOf((flightsByState.get(i)).size()));
    }
  return lhm;
  }
}
