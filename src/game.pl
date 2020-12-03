writePlayer(Name, Count):-
    open("../ranking.txt", append, Out),
    string_concat(Name, " ", Name_),
    number_string(Count, StrCount),
    string_concat(Name_, StrCount, Player),
    string_concat(Player, "\n", FPlayer),
    write(Out, FPlayer),
    close(Out).