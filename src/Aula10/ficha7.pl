%--------------------------------- - - - - - - - - - -  -  -  -  -   -
% I

soma(X, Y, Z, R) :- R is X + Y + Z.


%--------------------------------- - - - - - - - - - -  -  -  -  -   -
% II

somaL([], 0) .
somaL([H|T], R) :- somaL(T, R1), R is R1 + H.

%--------------------------------- - - - - - - - - - -  -  -  -  -   -
% III

max(X, Y, X) :- X >= Y.
max(X, Y, Y) :- Y > X.

%--------------------------------- - - - - - - - - - -  -  -  -  -   -
% IV

maxL([], 0) .
maxL([H|T], M) :- maxL(T, MaxT), max(H, MaxT, M).

%--------------------------------- - - - - - - - - - -  -  -  -  -   -
% V

% Predicado auxiliar para calcular o tamanho de uma lista
tamanho([_], 1):- !.
tamanho([_|T], S) :- tamanho(T, S1), S is S1 + 1.

% Média aritmética
media(L, M) :- somaL(L, S), tamanho(L, T), M is S / T.

%--------------------------------- - - - - - - - - - -  -  -  -  -   -
% VI 


%--------------------------------- - - - - - - - - - -  -  -  -  -   -
% VII


%--------------------------------- - - - - - - - - - -  -  -  -  -   -
% VIII

pertence(X, [X|_]).
pertence(X, [_|T]) :- pertence(X, T).

%--------------------------------- - - - - - - - - - -  -  -  -  -   -
% IX

comprimento(L, C) :- tamanho(L, C).

%--------------------------------- - - - - - - - - - -  -  -  -  -   -
% X

diferentes([], 0).
diferentes([H|T], D) :- pertence(H, T), diferentes(T, D).
diferentes([H|T], D1) :- not(pertence(H, T)), diferentes(T, D), D1 is D + 1.

%--------------------------------- - - - - - - - - - -  -  -  -  -   -
% XIV

concatenar([], L2, L2).
concatenar([X|R], L2, [X|L]) :- concatenar(R, L2, L).