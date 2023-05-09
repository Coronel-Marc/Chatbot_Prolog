% Projeto Integrador em Ci�ncias da Computa��o.
% Autor: Marcos Gabriel F L Jorge.
% Projeto: Chatbot.
% Linguagem: Prolog.

:-include(database_1).
:-include(database_2).

main:-
    format('Ol�! Sou o ChadBot.'),nl,
    format('Sobre o que deseja saber? '),nl,

    repeat,
    nl, format('========> '),
    read(Entrada),
    consulta_database(Entrada, Resposta),
    format(Resposta), nl,
    encerra(Entrada).

consulta_database(Entrada, Resposta_Correta) :-
    questao(Entrada, Resposta_Correta), !.

encerra(Entrada):-
    Entrada =  ('finalizar').
