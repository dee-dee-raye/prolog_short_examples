sum([],0).
sum([X|T],Y) :- sum(T,Z), Y is X + Z.