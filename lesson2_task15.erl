-module(lesson2_task15).

-export([replicate/2]).

replicate(L, Times) -> replicate(L, Times, 0, []).

replicate([], _, _, Acc)                       -> lesson2_task05:reverse(Acc);
replicate([H|T], Times, N, Acc) when N < Times -> replicate([H|T], Times, N+1, [H|Acc]);
replicate([_|T], Times, _, Acc)                -> replicate(T, Times, 0, Acc).
