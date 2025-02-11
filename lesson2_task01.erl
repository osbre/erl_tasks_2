-module(lesson2_task01).

-export([last/1]).

-doc("Retrieves the last item of the list").
last([H]) -> H;
last([_ | T]) -> last(T);
last([]) -> error(badarg).
