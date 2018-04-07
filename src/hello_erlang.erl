-module(hello_erlang).
-export([hello/0]).

hello() ->
    io:fwrite("Hello, World!\n").
