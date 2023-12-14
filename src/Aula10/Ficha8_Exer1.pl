
:- [ficha7].

aluno(1,joao,m).
aluno(2,antonio,m).
aluno(3,carlos,m).
aluno(4,luisa,f).
aluno(5,maria,f).
aluno(6,isabel,f).

curso(1,lei).
curso(2,miei).
curso(3,lcc).

%disciplina(cod,sigla,ano,curso)
disciplina(1,ed,2,1).
disciplina(2,ia,3,1).
disciplina(3,fp,1,2).

%inscrito(aluno,disciplina)
inscrito(1,1).
inscrito(1,2).
inscrito(5,3).
inscrito(5,5).
inscrito(2,5).

%nota(aluno,disciplina,nota)
nota(1,1,15).
nota(1,2,16).
nota(1,5,20).
nota(2,5,10).
nota(3,5,8).

%copia
copia(1,2).
copia(2,3).
copia(3,4).

%--------------------------------- - - - - - - - - - -  -  -  -  -   -
% I

alunoNI(Aluno) :- aluno(Numero, Aluno, _), not(inscrito(Numero, _)).

naoInscritos(L) :- findall(A, alunoNI(A), L).

%--------------------------------- - - - - - - - - - -  -  -  -  -   -
% II

discNE(A) :- aluno(Num, A, _), inscrito(Num, Disc), not(disciplina(Disc, _, _, _)).

naoInscritos2(L) :- findall(A, discNE(A), R), naoInscritos(S), concatenar(R, S, L).

%--------------------------------- - - - - - - - - - -  -  -  -  -   -
% III

notasAluno(Aluno, L) :- aluno(Num, Aluno, _), findall(N, nota(Num, _, N), L).

mediaAluno(Aluno, M) :- notasAluno(Aluno, Ns), media(Ns, M).

%--------------------------------- - - - - - - - - - -  -  -  -  -   -
% IV

lista_acima_media(M, R) :- findall(Aluno, (mediaAluno(Aluno, Media), Media > M), R).

acimamedia(A) :- findall(N, nota(_,_,N), Ns), media(Ns, M), lista_acima_media(M, A).

%--------------------------------- - - - - - - - - - -  -  -  -  -   -
% V

copiaram(Nomes) :- findall(Nome,(aluno(Numero, Nome, _), copia(_, Numero)), Nomes).

%--------------------------------- - - - - - - - - - -  -  -  -  -   -
% VI

copiou(X,Y) :- copia(X, Y).
copiou(X,Y) :- copia(A, Y), copiou(X, A).

copiouPor(X, Y) :- findall(Xs, copiou(X, Xs), Y).

%--------------------------------- - - - - - - - - - -  -  -  -  -   -
% VII

maptolist([], []) .
maptolist([H|T], L) :- not(aluno(H, _, _)), maptolist(T, L).
maptolist([H|T], [N|T1]) :- aluno(H, N, _), maptolist(T, T1).