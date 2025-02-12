-module(lesson2_task07).

-export([flatten/1]).

flatten(L) -> lesson2_task05:reverse(flatten(L, [])).

flatten([], Acc)                    -> Acc;
flatten([H|T], Acc) when is_list(H) -> flatten(T, flatten(H, Acc));
flatten([H|T], Acc)                 -> flatten(T, [H|Acc]).
