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
  int distanceBetweenAirports;
  
  Flight(String tFlightDate, String tIATACode, String tFlightNumber, String tOriginAirport, 
          String tOriginCity, String tOriginState, String tOriginWAC, String tDestinationAirport, 
          String tDestinationCity, String tDestinationState, String tDestinationWAC, 
          String tScheduledDepartureTime, String tActualDepartureTime, String tScheduledArrivalTime, 
          String tActualArrivalTime, boolean tCancelled, boolean tDiverted, int tDistance){
            
            this.flightDate = tFlightDate;
            this.IATACode = tIATACode;
            this.flightNumber = tFlightNumber;
            this.originAirport = tOriginAirport;
            this.originCity = tOriginCity;
            this.originState = tOriginState;
            this.originWAC = tOriginWAC;
            this.destinationAirport = tOriginAirport;
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
}
