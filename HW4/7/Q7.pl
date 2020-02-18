city(toronto,50,60).
city(madrid,75,45).
city(barcelona,40,30).
city(valencia,40,20).
city(paris,50,60).
city(toulous,40,30).
flight(iberia,toronto,madrid,800,480).
flight(united,toronto,madrid,950,540).
flight(aircanada,toronto,madrid,900,480).
flight(aircanada,madrid,barcelona,100,60).
flight(iberia,madrid,barcelona,40,30).
flight(iberia,madrid,valencia,40,20).
flight(iberia,barcelona,valencia,110,75).
flight(united,paris,toulouse,35,120).

cityinfo(A,B,C):-city(A,B,C).
flightinfo(A,B,C,D,E):-flight(A,B,C,D,E);flight(A,C,B,D,E).
isflight(A,B):-flight(X,A,B,C,D);flight(X,B,A,C,D).