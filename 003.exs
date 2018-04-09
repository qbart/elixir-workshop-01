import Enum, only: [each: 2, all?: 2, filter: 2]
import IO, only: [puts: 1]

puts "===== Example ====="

categories = [
    %{ name: "Category A", numbers: [2, 4, 6] },
    %{ name: "Category B", numbers: [3, 5, 7] },
    %{ name: "Category C", numbers: [5, 10, 15] },
    %{ name: "Category D", numbers: [10, 15] }
]

# print all numbers squared
each(categories, fn(x) ->
    puts "#{x.name} contains: #{Enum.join(x.numbers, ", ")}"
end)

puts "===== Example ====="

# Print all categories that contain numbers which all are divided by 5 without a reminder.
# We will use:
# all?(enumerable, fun \\ fn x -> x end) # \\ means default value (other languages usually use "=" operator)
categories
    |> filter(fn(m) ->
        all?(m.numbers, fn(x) -> rem(x, 5) == 0 end) # you could use pipe here as well: m.numbers |> all?(fn ...)
    end)
    |> each(fn(m) -> puts m.name end)

# To improve readability we could extract remainder check to anonymous function:
divides_by_5? = fn(x) ->
    rem(x, 5) == 0
end

# Verify it's working:
result = divides_by_5?.(10) # Yes, anonymous functions need that silly dot before parentheses.
puts "10 % 5 == 0 ? Answer: #{ result }"

# Refactor code:
categories
    |> filter(fn(m) -> all?(m.numbers, divides_by_5?) end)
    |> each(fn(m) -> puts m.name end)


puts "===== Exercises ====="

# Ex1. Based on example print all the categories that contain at least one number that divides by 5?
# Do you know which Enum function to use it?
#
# CODE HERE
#

# Ex2. Sort categories by their sum of numbers.

# Simple sort looks like this:
unsorted_list = [1, 8, 3, 1]
sorted_list = Enum.sort(unsorted_list) # or unsorted_list |> Enum.sort()
puts "Unsorted: #{Enum.join(unsorted_list, ", ")}"
puts "Sorted: #{Enum.join(sorted_list, ", ")}"

# To perform custom sorting you can specify function how to compare:
# sort(enumerable, fun)

#
# CODE HERE
#