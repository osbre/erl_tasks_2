-module(lesson2_task02).

-export([but_last/1]).

-doc("Retrieves the last two list items").
but_last([F|[S]]) -> [F, S];
but_last([_|[]]) -> error(badarg);
but_last([_|L]) -> but_last(L).
