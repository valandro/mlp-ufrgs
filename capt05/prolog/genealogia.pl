pessoa('Joao').
pessoa('Maria').
pessoa('Ana').
pessoa('Jose').
pessoa('Marcio').
pessoa('Leonardo').
pessoa('Daniele').
pessoa('Carla').
pessoa('Fernando').
pessoa('Marcelo').

gosto('Joao', 'Chocolate').
gosto('Maria', 'Chocolate').
gosto('Ana', 'Sorvete').
gosto('Jose', 'Chocolate').
gosto('Marcio', 'Chocolate').
gosto('Leonardo', 'Iogurte').
gosto('Daniele', 'Chocolate').
gosto('Carla', 'Iogurte').
gosto('Fernando', 'Chocolate').
gosto('Marcelo', 'Sorvete').

feminino('Maria').
feminino('Ana').
feminino('Carla').
feminino('Daniele').

masculino('Joao').
masculino('Jose').
masculino('Marcio').
masculino('Leonardo').
masculino('Fernando').
masculino('Marcelo').

%filho(Pai, Filho)
filho('Joao', 'Ana').
filho('Joao', 'Jose').
filho('Joao', 'Marcio').
filho('Maria', 'Ana').
filho('Maria', 'Jose').
filho('Maria', 'Marcio').
filho('Leonardo', 'Carla').
filho('Leonardo', 'Fernando').
filho('Daniele', 'Carla').
filho('Daniele', 'Fernando').
filho('Marcio', 'Marcelo').
filho('Carla', 'Marcelo').

% pai(Pai, Filho)
ehpai(P, F):- filho(P, F).
pai(P, F):- ehpai(P, F), masculino(P).
mae(M, F):- ehpai(M, F), feminino(M).
gosta(P, G) :- gosto(P, G).
gostos(G, L):- findall(P, gosta(P, G), L).

gostos_compartilhados(P1, P2, L):- findall(G, (gosta(P1, G), gosta(P2, G)), L).

irmaos(X, Y):- pai(P, X), pai(P, Y), mae(M, X), mae(M, Y), X\=Y.
irmao(X, Y):-irmaos(X, Y), masculino(Y).
irma(X, Y):-irmaos(X, Y), feminino(Y).

meioirmaos(X, Y):-((pai(P, X), pai(P, Y));(mae(M, X), mae(M, Y))), X\=Y.
meioirmao(X, Y):-meioirmaos(X, Y), masculino(Y).
meioirma(X, Y):-meioirmaos(X, Y), feminino(Y).

tios(T, S):-  (pai(P, S), irmaos(P, T)); (mae(M, S), irmaos(M, T)).

acha_tios(S, L):- findall(T, tios(T, S), L).

eh_avom(V, N) :- (pai(V, P), pai(P, N)).
eh_avof(V, N) :- (mae(V, P), mae(P, N)).
lista_avos(N, L):- findall(V, (eh_avom(V, N);eh_avof(V, N)), L).

lista_antepassados(P, L) :- findall(X, (pai(X, P); mae(X, P); tios(X, P); eh_avom(X, P); eh_avof(X, P)), L).



