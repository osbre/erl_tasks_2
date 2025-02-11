-module(lesson2_task03).

-export([element_at/2]).

-doc("Find the list element at a specified position.").
element_at([H|_], N) when N == 1 -> H;
element_at([_|T], N) -> element_at(T, N - 1);
element_at(_, _) -> error(badarg).
