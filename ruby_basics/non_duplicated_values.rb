def non_duplicated_values(array)
  frequency = Hash.new(0)
  array.each { |element| frequency[element] += 1 }
  result = []
  frequency.each do |key, value|
    result << key if value == 1
  end
  result
end

p non_duplicated_values([1,2,2,3,3,4,5])
