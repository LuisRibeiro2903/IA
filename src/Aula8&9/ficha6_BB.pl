
%LICENCIATURA EM ENGENHARIA INFORMÁTICA
%MESTRADO integrado EM ENGENHARIA INFORMÁTICA

%Inteligência Artificial
%2023/24

%Draft Ficha 6


% Extensao do predicado filho: Filho,Pai -> {V,F}

filho( joao,jose ).
filho( jose,manuel ).
filho( carlos,jose ).

%--------------------------------- - - - - - - - - - -  -  -  -  -   -
% Extensao do predicado pai: Pai,Filho -> {V,F}

pai( P,F ) :- filho( F,P ).

%--------------------------------- - - - - - - - - - -  -  -  -  -   -
% Extensao do predicado avo: Avo,Neto -> {V,F}

avo(A, N) :- filho(X, A), filho(N, X).


%--------------------------------- - - - - - - - - - -  -  -  -  -   -
% Extensao do predicado bisavo: Bisavo,Bisneto -> {V,F}




%--------------------------------- - - - - - - - - - -  -  -  -  -   -
% Extensao do predicado descendente: Descendente,Ascendente -> {V,F}

desc(X, Y) :- filho(X, Y).
desc(X, Y) :- filho(X, A), desc(A, Y).




%--------------------------------- - - - - - - - - - -  -  -  -  -   -
% Extensao do predicado descendente: Descendente,Ascendente,Grau -> {V,F}

descGr(X, Y, 1) :- filho(X, Y).
descGr(X, Y, G) :- filho(X, Z), descGr(Z, Y, G1), G is G1 + 1.


%--------------------------------- - - - - - - - - - -  -  -  -  -   -
%XVII




%--------------------------------- - - - - - - - - - -  -  -  -  -   -
%XVIII




%--------------------------------- - - - - - - - - - -  -  -  -  -   -





%--------------------------------- - - - - - - - - - -  -  -  -  -   -