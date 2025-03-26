class Flight{
  
  String flightDate;
  String IATACode;
  String flightNumber;
  String originAirport;
  String originCity;
  String originState;
  String originWAC;
  String destinationAirport;
  String destinationCity;
  String destinationState;
  String destinationWAC;
  String scheduledDepartureTime;
  String actualDepartureTime;
  String scheduledArrivalTime;
  String actualArrivalTime;
  boolean cancelled;
  boolean diverted;
  float distanceBetweenAirports;
  
  //4 4 3 3 1 = 8 6 1 = 15 t t i
  Flight(String tFlightDate, String tIATACode, String tFlightNumber, String tOriginAirport, 
          String tOriginCity, String tOriginState, String tOriginWAC, String tDestinationAirport, 
          String tDestinationCity, String tDestinationState, String tDestinationWAC, 
          String tScheduledDepartureTime, String tActualDepartureTime, String tScheduledArrivalTime, 
          String tActualArrivalTime, boolean tCancelled, boolean tDiverted, float tDistance){
            
            this.flightDate = tFlightDate;
            this.IATACode = tIATACode;
            this.flightNumber = tFlightNumber;
            this.originAirport = tOriginAirport;
            this.originCity = tOriginCity;
            this.originState = tOriginState;
            this.originWAC = tOriginWAC;
            this.destinationAirport = tDestinationAirport;
            this.destinationCity = tDestinationCity;
            this.destinationState = tDestinationState;
            this.destinationWAC = tDestinationWAC;
            this.scheduledDepartureTime = tScheduledDepartureTime;
            this.actualDepartureTime = tActualDepartureTime;
            this.scheduledArrivalTime = tScheduledArrivalTime;
            this.actualArrivalTime = tActualArrivalTime;
            this.cancelled = tCancelled;
            this.diverted = tDiverted;
            this.distanceBetweenAirports = tDistance;    
  }
  
  @Override public String toString() {
    return String.format("%s: %s%n%s: %s%n%s: %s%n%s: %s%n%s: %s%n%s: %s%n%s: %s%n%s: %s%n%s: %s%n%s: %s%n%s: %s%n%s: %s%n%s: %s%n%s: %s%n%s: %s%n%s: %b%n%s: %b%n%s: %.2f%n",
    "Flight date", flightDate, "IATA code", IATACode, "Flight number", flightNumber, "Origin Airport", originAirport, "Origin city", originCity,
    "Origin state", originState, "Origin WAC", originWAC, "Destination airport", destinationAirport, "Destination City", destinationCity,
    "Destination State", destinationState, "Destination WAC", destinationWAC, "Scheduled departure time", scheduledDepartureTime, "Actual departure time",
    actualDepartureTime, "Scheduled arrival time", scheduledArrivalTime, "Actual arrival time", actualArrivalTime, "Cancelled", cancelled, "Diverted", diverted,
    "Distance between airports", distanceBetweenAirports);
  }
}
