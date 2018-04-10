import Enum, only: [each: 2, to_list: 1, reduce: 2, reduce: 3, group_by: 2, group_by: 3]
import IO, only: [puts: 1]


puts "===== Example ====="

# Group by
[
    %{name: "A", number: 1},
    %{name: "A", number: 2},
    %{name: "B", number: 3}
]
    |> group_by(fn(x) -> x.name end)
    |> each(fn({k, v}) ->
        nums = Enum.map(v, fn(map) -> map.number end)
        puts "#{k}: [#{Enum.join(nums, ", ")}]"
    end)

# Used group_by will return the followin data structure:
# %{
#   "A" => [
#     %{name: "A", number: 1},
#     %{name: "A", number: 2},
#   ],
#   "B" => %{name: "B", number: 3}
# }

# Ex1. Can you rewrite the code so group_by will return:
# %{
#   "A" => [1, 2],
#   ],
#   "B" => [3]
# }
# Hint: use group_by/3

# Reduce

factorial = 1..5
    |> to_list
    |> reduce(fn(x, acc) -> x * acc end) # accumulator is initialized with the first value in the list
puts "5! = #{factorial}"

# Ex2. Using reduce transform turtle list into the following format:
# %{
#   "Leonardo" => "blue",
#   "Donatello" => "purple"
# }

turtles = [
    %{name: "Leonardo", color: "blue"},
    %{name: "Michelangelo", color: "orange"},
    %{name: "Donatello", color: "purple"},
    %{name: "Raphael", color: "red"}
]
turtles
    #|> reduce(...DO MAGIC...)
    #|> each(fn({k, v}) -> puts "#{k} => #{v}" end)
