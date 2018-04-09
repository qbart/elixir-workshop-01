IO.puts "===== List ====="

list = [1, 2, 3, 4, 5]

# print all numbers
Enum.each(list, fn(x) -> IO.puts "Number: #{x}" end)

# you should get a compiler warning about using () when piping into a function calls,
# Ex1. Fix compiler warning.
list
    |> Enum.each fn(x) -> IO.puts "Number from pipe: #{x}" end 

IO.puts "===== Map ====="

map = %{ name: "Leonardo", color: "blue" }

# print all turtle attributes
Enum.each(map, fn({k, v}) -> IO.puts "#{k}: #{v}" end)

IO.puts "===== KV List ====="

kv = [{:name, "Leonardo"}, {:color, "blue"}]
# above can be also written as:
kv2 = [name: "Leonardo", color: "blue"]

# print all turtle attributes
Enum.each(kv, fn({k, v}) -> IO.puts "1) #{k}: #{v}" end)
Enum.each(kv2, fn({k, v}) -> IO.puts "2) #{k}: #{v}" end)
