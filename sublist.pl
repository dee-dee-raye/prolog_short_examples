sublist(X,[]) :- is_list(X).
sublist([H|T],[B|E]) :- searchFor([H|T],[B|E]).

searchFor([H|T],[H|E]) :- sublist(T,E).
searchFor([H|T],[B|E]) :- searchFor(T,[B|E]).