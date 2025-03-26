import java.util.*;

class Normaliser {
  public  LinkedHashMap normalisingData(Reader r) {
    String filterString;
    for(int i = 0; i < 50; i++) {
      filterString = states[i];
      flights = r.readIn(1, 0, "origin state, " + filterString);
      flightsByState.add(flights);
    }
  
    int[] flightsFromState = new int[50];
    float largestValue = 0;
    for(int i = 0; i < 50; i++) {
      flightsFromState[i] = Integer.valueOf((flightsByState.get(i)).size());
      if(flightsFromState[i] > largestValue) {
        largestValue = flightsFromState[i];
      }
    }
  
    multiplier = 0.8;
    int count = 0;
    while(largestValue > 800) {
       largestValue = largestValue * 0.8;
       for(int i = 0; i < 50; i++) {
         flightsFromState[i] = int(flightsFromState[i] * 0.8);
       }
       count+=1;
       multiplier = multiplier * count;
    }
  
    for(int i = 0; i < 50; i++) {
      lhm.put(states[i], flightsFromState[i]);
      System.out.println(states[i] + String.valueOf((flightsByState.get(i)).size()));
    }
  return lhm;
  }
}
