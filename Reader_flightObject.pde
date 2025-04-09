import java.util.ArrayList;

class Reader{
  
  public ArrayList<Flight> readIn(int start, int end, String filter) {
    String[] data = loadStrings("flights2k.csv");
    
    boolean isFiltered = true;
    if(filter.toLowerCase().equals("n/a")) { //input n/a to indicate that a filter is not to be used
      isFiltered = false;
    }
    
    int categoryNumber = 1;
    String filterBy = "";
    
    if(isFiltered) {
      String[] filterHalves = filter.split(", "); //for the filter, expecting string in the form "[category], [filterBy]"- example: "IATA code, AA" to filter by AA/ american airlines
      String category = filterHalves[0];
      filterBy = filterHalves[1];
      
      String[] categories = {"flight date", "iata code", "flight number", "origin airport", "origin city", "PLACEHOLDER", "origin state", "origin wac", "destination airport", "destination city", "PLACEHOLDER", "destination state", "destination wac", "scheduled departure time", //<>//
        "actual departure time", "scheduled arrival time", "actual arrival time", "cancelled", "diverted", "distance between airports"};
      categoryNumber = 100;
      
      for(int i = 0; i < categories.length; i++) {
        if(category.toLowerCase().equals(categories[i])) {
          categoryNumber = i;
          break;
        }
      }
      if(categoryNumber == 100) {
        isFiltered = false;
      }
    }
    
    if(end == 0) { //to not specify an end to the amount of flights to read in, input a 0
      end = data.length;
    }

    String[] parts = new String[25];
    ArrayList<Flight> flights = new ArrayList<Flight>();
    boolean cancelled;
    boolean diverted;
    int distance;
    boolean useThis = true;
    
    for(int i = start; i < end; i++) {
      parts = data[i].split(",");
      System.out.println(data[i]);
      parts[4] = parts[4].replace("\"", "");
      parts[9] = parts[9].replace("\"", "");
      
      if(isFiltered) {
        if(!parts[categoryNumber].toLowerCase().equals(filterBy.toLowerCase())) {
          useThis = false;
        }
      }
      
      if(useThis) {
        if(parts[17].equals("1")) {
          cancelled = true;
        }
        else {
          cancelled = false;
        }
        if(parts[18].equals("1")) {
          diverted = true;
        }
        else {
          diverted = false;
        }
        distance = Integer.parseInt(parts[19]);
   
        flights.add(new Flight(parts[0], parts[1], parts[2], parts[3], parts[4], parts[6], parts[7], parts[8], parts[9], parts[11], parts[12], parts[13], parts[14], parts[15], parts[16], diverted, cancelled, distance));
      } //<>//
      useThis = true;
    }
    
    //Flight[] returnFlights = new Flight[flights.size()];
    
    for(int i = 0; i < flights.size(); i++) { //<>//
      //returnFlights[i] = flights.get(i);
      System.out.printf("%s%n", flights.get(i).toString());
      
    } //toArray or whatever didn't work on flights arraylist so adding flights to the list with loop instead  :(
    
    return flights;
  }
}
