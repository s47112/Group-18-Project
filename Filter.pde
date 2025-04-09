import java.util.ArrayList;

class Filter {

 public ArrayList<Flight> filtering(ArrayList<Flight> flights, String filterString) { //<>//
    String[] categories = {"flight date", "iata code", "flight number", "origin airport", "origin city", "origin state", "origin wac", "destination airport", "destination city","destination state", "destination wac", "scheduled departure time", //<>//
        "actual departure time", "scheduled arrival time", "actual arrival time", "cancelled", "diverted", "distance between airports"};
    String[] filters = filterString.split(", ");
    int indexString = 100;

   for(int i = 0; i < categories.length; i++) {
     if(filters[0].equalsIgnoreCase(categories[i])) {
       indexString = i;
       break;
     }
   }

   if(indexString == 100) {
     return flights;
   }
   else { //<>//
     for(int i = 0; i < flights.size(); i++) {
       String[] flightData = {flights.get(i).flightDate, flights.get(i).IATACode, flights.get(i).flightNumber, flights.get(i).originAirport, flights.get(i).originCity, flights.get(i).originState, flights.get(i).originWAC, flights.get(i).destinationAirport,
       flights.get(i).destinationCity, flights.get(i).destinationState, flights.get(i).destinationWAC, flights.get(i).scheduledDepartureTime, flights.get(i).actualDepartureTime, flights.get(i).scheduledDepartureTime, flights.get(i).actualDepartureTime, null, null,
       null};
       //15
       if(flights.get(i).cancelled) {
         flightData[15] = "1";
       }
       else {
         flightData[15] = "0";
       }
       if(flights.get(i).diverted) {
         flightData[16] = "1";
       }
       else {
         flightData[16] = "0";
       }
       flightData[17] = String.valueOf(flights.get(i).distanceBetweenAirports);

       if(!(flightData[indexString].equalsIgnoreCase(filters[1]))) {
         flights.remove(i);
       }
     }
     return flights;
   }
 }

}
