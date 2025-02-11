-module(lesson2_task06).

-export([is_palindrome/1]).

is_palindrome(L) -> L == lesson2_task05:reverse(L).
