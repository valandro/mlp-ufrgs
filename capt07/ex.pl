aconselha('Spock', 'Kirk').
aconselha('Diana', 'Picard').

comanda('Archer', 'NX-01').
comanda('Kirk', 'NCC-1701').
comanda('Picard', 'NCC-1701-D').
comanda('Janeway', 'Voyager').
comanda('Almak', 'IRW TMet').

e_um('NX-01', 'Enterprise').
e_um('NCC-1701', 'Enterprise').
e_um('NCC-1701-D', 'Enterprise').
e_um('Voyager', 'Enterprise').
e_um('IRW TMet', 'D-deridex').
e_um('Enterprise', 'Nave').
e_um('D-deridex', 'Nave').
pertence('Enterprise', 'Federação').
locomocao('Enterprise', 'Motor de dobra').
pertence('D-deridex', 'Império Romulano').

faccao(Comandante, Faccao) :- comanda(Comandante, Nave), e_um(Nave, Tipo), pertence(Tipo, Faccao).

inimigos(Comandante1, Comandante2) :- faccao(Comandante1, Faccao1), faccao(Comandante2, Faccao2), not(Faccao1 == Faccao2). 

lista_naves(Faccao, Lista) :- pertence(Tipo, Faccao), findall(Nave, e_um(Nave, Tipo), Lista).