def sum_of_cubes(range_start, range_end)
  (range_start..range_end).inject(0) { |sum, element| sum += element ** 3 }
end

puts sum_of_cubes(1, 3)
puts sum_of_cubes(5, 6)
