getTheBestPlayer() :-
    read_file_to_string("../ranking.txt", Players, []),
    split_string(Players, "\n", "", PlayersList),
    splitPlayer(PlayersList, PlayersList2),
    bubble_sort(PlayersList2, SortedPlayers),
	((list_empty(SortedPlayers) -> write("        NÃO HÁ VENCEDORES"));
	(nth0(0, SortedPlayers, R), 
	 nth0(0, R, Name), 
	 nth0(1, R, Punct),
	 write("            "),
     write(Name),
     write(" - "),
     write(Punct))),
	writeln("").

splitPlayer([_], R) :- R = [].
splitPlayer([H|T], R) :-
    split_string(H, " ", "", Player),
    nth0(0, Player, Name), nth0(1, Player, N),
    number_codes(Mov, N),
    L = [Name, Mov],
    splitPlayer(T, NP),
    append([L], NP, R).

bubble_sort(List,Sorted):-b_sort(List,[],Sorted).
b_sort([],Acc,Acc).
b_sort([H|T],Acc,Sorted):-bubble(H,T,NT,Max),b_sort(NT,[Max|Acc],Sorted).
       
bubble(X,[],[],X).
bubble(X,[Y|T],[Y|NT],Max):- 
    [_,B1] = X, [_,B2] = Y, 
    B1 > B2, bubble(X,T,NT,Max).
bubble(X,[Y|T],[X|NT],Max):-
    [_,B1] = X, [_,B2] = Y, 
    B1 =< B2, bubble(Y,T,NT,Max).

list_empty([]):-true.
list_empty([_|_]):-false.