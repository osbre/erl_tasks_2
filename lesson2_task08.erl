-module(lesson2_task08).

-export([compress/1]).

compress([H|T]) -> compress([H|T], undefined, []).

compress([], _, Acc)                      -> lesson2_task05:reverse(Acc);
compress([H|T], Last, Acc) when H == Last -> compress(T, H, Acc);
compress([H|T], _, Acc)                   -> compress(T, H, [H|Acc]).
