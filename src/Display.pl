:- module('Display', [
    showTitle/0,
    initializeMenu/0
]).
:- use_module('game').
:- include('MAPA1.pl').

cls :- write('\e[H\e[2J').
ln :- writeln("").

showTitle():- cls, writeln("##############################################################################"),
sleep(0.3),
writeln("._________.  .___.   ._________.  .___.  _________  ________      .__.    "),
sleep(0.3),
writeln("|__.   .__|  |   |   |  .______|  |   |  |       |  | |           /  \\     "),
sleep(0.3),
writeln("   |   |     |   |   |  |______|  |   |  |  |\\   |  | |_____     /    \\     "),
sleep(0.3),
writeln("   |   |     |   |   |  |  \\   |  |   |  |  | \\  |  | |___. |   /  /\\  \\   "),
sleep(0.3),
writeln("   |   |     |   |   |  |   \\  |  |   |  |  |  \\ |  | |   | |  /  /__\\  \\ "),
sleep(0.3),
writeln("   |___|     |___|   |__|    \\_|  |___|  |__|  |_|  |_|___|_| .|_/    \\_|.  "),
sleep(0.3),
writeln("\n###############################################################################\n"),
sleep(1),
writeln("TIRINGA VS WEREWOLF: THE GAME™\n"),
sleep(1),
writeln("Feito por: "),
sleep(0.5),
writeln("Edimar Chaves"),
sleep(0.5),
writeln("Gabriel Paiva"),
sleep(0.5),
writeln("Jackson Aguiar"),
sleep(0.5),
writeln("Ruan Gomes\n").

initializeMenu() :-
    cls,
    writeln("============================================================="),
    writeln("======================== Tiringa vs Werewolf ========================="),
    writeln("============================================================="),
    writeln(""),
    writeln("  1) Iniciar"),
    writeln("  2) Recordes"),
    writeln("  3) Tutorial"),
    writeln("  4) Sair"),
    writeln(""),
    write("  Digite a opção desejada para continuar: "),
    read_line_to_string(user_input, Option),
    initOption(Option).

initOption(Option) :- ((Option == "1", criaMapa);
                       (Option == "2", showRecords);
                       (Option == "3", showCredits);
                       (Option == "4", cls(), halt(0));
                       (initializeFailedMenu()))
                          -> read(Something).