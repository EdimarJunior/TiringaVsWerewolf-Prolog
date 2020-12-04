:- module('game', [
    game/0,
    writePlayer/2
]).

game() :-
    write("  Escolha a dificuldade: "),
    write(" 1 - Fácil. "),
    write(" 2 - Difícil. ",)
    read_line_to_string(user_input, X).

writePlayer(Name, Count):-
    open("../ranking.txt", append, Out),
    string_concat(Name, " ", Name_),
    number_string(Count, StrCount),
    string_concat(Name_, StrCount, Player),
    string_concat(Player, "\n", FPlayer),
    write(Out, FPlayer),
    close(Out).