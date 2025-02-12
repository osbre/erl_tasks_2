-module(lesson2_task09).

-export([pack/1]).

pack([H|T]) -> pack(T, H, [H], []).

pack([],    _,  SubList, Acc)              -> lesson2_task05:reverse([SubList|Acc]);
pack([H|T], El, SubList, Acc) when H == El -> pack(T, El, [El|SubList], Acc);
pack([H|T],  _, SubList, Acc)              -> pack(T, H,  [H], [SubList|Acc]).
