-module(lesson2_task12).

-export([decode_modified/1]).

decode_modified(L) -> decode(L, []).

decode([], Acc)                              -> lesson2_task05:reverse(Acc);
decode([{Times, El}|T], Acc) when Times > 0  -> decode([{Times-1, El}|T], [El|Acc]);
decode([H|T], Acc)           when is_atom(H) -> decode(T, [H|Acc]);
decode([_|T], Acc)                           -> decode(T, Acc).
