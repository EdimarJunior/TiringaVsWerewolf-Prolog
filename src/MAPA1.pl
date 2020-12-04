:- module('MAPA1', [
	criaMapa/0
]).
addElement(X, [], [X]). 
addElement(X, [Y | Rest], [X,Y | Rest]) :- X @< Y, !.
addElement(X, [Y | Rest1], [Y | Rest2]) :- addElement(X, Rest1, Rest2).

criaMapa:-
	addElement(['#', '#', '#', '#', '#', '#', '#', '#', '#', '#', '#', '#', '#', '#', '#', '#'], [] ,  ADD1),
	addElement(['T', ' ', ' ', ' ', '#', '#', ' ', '#', '#', '#', '#', '#', ' ', ' ', ' ', '#'], ADD1, ADD2),
	addElement(['#', '#', '#', ' ', ' ', ' ', ' ', '#', '#', '#', '#', '#', ' ', '#', ' ', '#'], ADD2, ADD3),
	addElement(['#', '#', '#', ' ', '#', '#', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '#', ' ', '#'], ADD3, ADD4),
	addElement(['#', '#', '#', ' ', '#', '#', '#', '#', ' ', '#', '#', '#', '#', '#', ' ', '#'], ADD4, ADD5),
	addElement(['#', '#', '#', ' ', '#', '#', '#', '#', ' ', '#', '#', '#', '#', '#', ' ', '#'], ADD5, ADD6),
	addElement(['#', '#', '#', ' ', ' ', ' ', ' ', '#', ' ', '#', '#', '#', '#', '#', ' ', '#'], ADD6, ADD7),
	addElement(['#', '#', '#', ' ', '#', '#', ' ', '#', ' ', '#', '#', '#', '#', '#', ' ', '#'], ADD7, ADD8),
	addElement(['#', '#', '#', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '#'], ADD8, ADD9),
	addElement(['#', '#', '#', ' ', '#', '#', ' ', '#', ' ', '#', '#', '#', ' ', '#', '#', '#'], ADD9, ADD10),
	addElement(['#', '#', ' ', ' ', '#', '#', ' ', '#', ' ', '#', '#', '#', ' ', '#', '#', '#'], ADD10, ADD11),
	addElement(['#', '#', ' ', '#', '#', 'W', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', 'S'], ADD11, ADD12),
	addElement(['#', '#', ' ', '#', '#', '#', '#', '#', ' ', '#', ' ', '#', '#', '#', '#', '#'], ADD12, ADD13),
	addElement(['#', '#', ' ', '#', '#', '#', '#', ' ', ' ', '#', ' ', '#', '#', '#', '#', '#'], ADD13, ADD14),
	addElement(['#', '#', ' ', '#', '#', '#', '#', ' ', '#', '#', ' ', '#', '#', '#', '#', '#'], ADD14, ADD15),
	addElement(['#', ' ', ' ', ' ', '#', '#', '#', ' ', '#', '#', ' ', '#', '#', '#', '#', '#'], ADD15, ADD16),
	addElement(['#', ' ', '#', ' ', '#', ' ', ' ', ' ', '#', '#', ' ', '#', '#', '#', '#', '#'], ADD16, ADD17),
	addElement(['#', ' ', '#', ' ', ' ', ' ', '#', '#', '#', '#', ' ', '#', '#', '#', '#', '#'], ADD17, ADD18),
	addElement(['#', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '#', '#', '#', '#', '#'], ADD18, ADD19),
	addElement(['#', '#', '#', '#', '#', '#', '#', '#', '#', '#', '#', '#', '#', '#', '#', '#'], ADD19, ADD20),
	funcaoQueEdimarVaiUsarMapa(ADD20).


funcaoQueEdimarVaiUsarMapa(R):-
	write(R).



