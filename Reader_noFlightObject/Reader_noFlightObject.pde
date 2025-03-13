import java.util.ArrayList;

String[] flights = loadStrings("flights2k.csv");
ArrayList<String> flightDatesAL = new ArrayList<String>(); //AL = ArrayList
ArrayList<String> airlineCodesAL = new ArrayList<String>();
ArrayList<String> flightNumbersAL = new ArrayList<String>();
ArrayList<String> originAirportsAL = new ArrayList<String>();
ArrayList<String> originCitiesAL = new ArrayList<String>();
ArrayList<String> originStatesAL = new ArrayList<String>();
ArrayList<String> originWACsAL = new ArrayList<String>();
ArrayList<String> destAirportsAL = new ArrayList<String>(); //dest = destination
ArrayList<String> destCitiesAL = new ArrayList<String>();
ArrayList<String> destStatesAL = new ArrayList<String>();
ArrayList<String> destWACsAL = new ArrayList<String>();
ArrayList<String> schDepsAL = new ArrayList<String>(); //sch = scheduled, dep = departure
ArrayList<String> accDepsAL = new ArrayList<String>(); //acc = actual
ArrayList<String> schArrsAL = new ArrayList<String>(); //arr = arrival
ArrayList<String> accArrsAL = new ArrayList<String>();
ArrayList<Boolean> cancelledAL = new ArrayList<Boolean>();
ArrayList<Boolean> divertedAL = new ArrayList<Boolean>();
ArrayList<Integer> distancesAL = new ArrayList<Integer>();

String[] parts = new String[25]; //<>//
for(int i = 1; i < flights.length; i++) {
  parts = flights[i].split(",");
  System.out.println(flights[i]);
  flightDatesAL.add(parts[0]);
  airlineCodesAL.add(parts[1]);
  flightNumbersAL.add(parts[1] + parts[2]);
  originAirportsAL.add(parts[3]);
  originCitiesAL.add(parts[4].replace("\"", ""));
  originStatesAL.add(parts[6]);
  originWACsAL.add(parts[7]);
  destAirportsAL.add(parts[8]);
  destCitiesAL.add(parts[9].replace("\"", ""));
  destStatesAL.add(parts[11]);
  destWACsAL.add(parts[12]);
  schDepsAL.add(parts[13]);
  accDepsAL.add(parts[14]);
  schArrsAL.add(parts[15]);
  accArrsAL.add(parts[16]);
  if(parts[17].equals("0")) {
    cancelledAL.add(false);
  }
  else {
    cancelledAL.add(true);
  }
  if(parts[18].equals("0")) {
    divertedAL.add(false);
  }
  else {
    divertedAL.add(true);
  }
  distancesAL.add(Integer.valueOf(parts[17]));
}

String[] flightDates = flightDatesAL.toArray(new String[0]);
String[] airlineCodes = airlineCodesAL.toArray(new String[0]);
String[] flightNumbers = flightNumbersAL.toArray(new String[0]);
String[] originAirports = originAirportsAL.toArray(new String[0]);
String[] originCities = originCitiesAL.toArray(new String[0]);
String[] originStates = originStatesAL.toArray(new String[0]);
String[] originWACs = originWACsAL.toArray(new String[0]);
String[] destAirports = destAirportsAL.toArray(new String[0]);
String[] destCities = destCitiesAL.toArray(new String[0]);
String[] destStates = destStatesAL.toArray(new String[0]);
String[] destWACs = destWACsAL.toArray(new String[0]);
String[] schDeps = schDepsAL.toArray(new String[0]);
String[] accDeps = accDepsAL.toArray(new String[0]);
String[] schArrs = schArrsAL.toArray(new String[0]);
String[] accArrs = accArrsAL.toArray(new String[0]);
Boolean[] cancelled = cancelledAL.toArray(new Boolean[0]);
Boolean[] diverted = divertedAL.toArray(new Boolean[0]);
Integer[] distances = distancesAL.toArray(new Integer[0]); //<>//
