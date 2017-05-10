module Main
    ( read
    , eval
    , print
    ) where

import Console exposing
    ( exit
    , forever
    , getLine
    , putStr
    , putStrLn
    , IO
    , (>>>)
    , (>>=)
    )

import Task


read : String -> String
read x = x

eval : String -> String
eval x = x

print : String -> String
print x = x

rep : String -> String
rep x = x |> read |> eval |> print

body : IO ()
body = putStr "user> "
    >>> getLine
    >>= \s -> putStrLn (rep s)
    >>> body

loop : IO ()
loop = forever ( body )

port runner : Signal (Task.Task x ())
port runner = Console.run loop
