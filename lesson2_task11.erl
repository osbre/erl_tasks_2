-module(lesson2_task11).

-export([encode_modified/1]).

encode_modified([H|T]) -> encode(T, H, 1, []).

encode([], El, Times, Acc)                 -> lesson2_task05:reverse([item(Times, El) | Acc]);
encode([H|T], El, Times, Acc) when H == El -> encode(T, H, Times+1, Acc);
encode([H|T], El, Times, Acc)              -> encode(T, H, 1, [item(Times, El) | Acc]).

item(Times, El) when Times == 1 -> El;
item(Times, El)                 -> {Times, El}.
