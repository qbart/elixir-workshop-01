import Enum, only: [each: 2, map: 2]
import IO, only: [puts: 1]


IO.puts "===== List ====="

list = [1, 2, 3, 4, 5]

# print all numbers squared
list
    |> map(fn(x) -> x * x end)
    |> each(fn(x) -> puts x end)


IO.puts "===== Map ====="

turtle = %{ name: "Leonardo", color: "blue" }
# print values upper cased
turtle
    |> map(fn({k, v}) -> {k, String.upcase(v)} end)
    |> each(fn({k, v}) -> puts "#{k}: #{v}" end)


# Ex1. Print all odd numbers in reverse order,
# choose appropriate functions:
# https://hexdocs.pm/elixir/Enum.html
# Hint: to calculate remainder use: rem/2
range = 1..100
range
    # |> # UNCOMMENT AND INSERT YOUR CODE HERE
    # |> each(fn(x) -> puts x end) # UNCOMMENT