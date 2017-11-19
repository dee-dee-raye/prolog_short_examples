len([],0).
len([_|T],Y) :- len(T,Z), Y is Z + 1.
nth([X|_],0,X).
nth([_|T],N,Y) :- M is N - 1, nth(T,M,Y).
find([X|_],0,X).
find([_|T],N,Y) :- find(T,M,Y), N is M + 1.
perm([],[]).
perm([X|T],[A|Y]) :- remove(X,[A|Y],Z), perm(Z,T).
remove(X, [X|A],A).
remove(X,[Y|A],Z) :- X \== Y, remove(X,A,N), Z = [Y|N].
sortit(X,Y) :- perm(X,Y), order(Y).
order([_]).
order([]).
order([X,Y|T]) :- X < Y, order([Y|T]).
