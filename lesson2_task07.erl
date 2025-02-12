-module(lesson2_task07).

-export([flatten/1]).

flatten(L) -> lesson2_task05:reverse(flatten(L, [])).

flatten([], L)                    -> L;
flatten([H|T], L) when is_list(H) -> flatten(T, flatten(H, L));
flatten([H|T], L)                 -> flatten(T, [H|L]).
