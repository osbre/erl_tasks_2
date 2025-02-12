-module(lesson2_task10).

-export([encode/1]).

encode([H|T]) -> encode(T, H, 1, []).

encode([], El, Times, Acc)                 -> lesson2_task05:reverse([{Times, El} | Acc]);
encode([H|T], El, Times, Acc) when H == El -> encode(T, H, Times+1, Acc);
encode([H|T], El, Times, Acc)              -> encode(T, H, 1, [{Times, El} | Acc]).
