-module(lesson2_task13).

-export([decode/1]).

decode(L) -> decode(L, []).

decode([], Acc)                             -> lesson2_task05:reverse(Acc);
decode([{Times, El}|T], Acc) when Times > 0 -> decode([{Times-1, El}|T], [El|Acc]);
decode([_|T], Acc)                          -> decode(T, Acc).
