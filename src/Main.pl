:- use_module('Display').
:- initialization main.


cls :- write('\e[H\e[2J').
ln :- writeln("").

main:-
    cls,
    showTitle,
    initializeMenu.