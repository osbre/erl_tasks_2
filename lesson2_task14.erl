-module(lesson2_task14).

-export([duplicate/1]).

duplicate(L) -> duplicate(L, []).

duplicate([], Acc)    -> lesson2_task05:reverse(Acc);
duplicate([H|T], Acc) -> duplicate(T, [H,H|Acc]).
