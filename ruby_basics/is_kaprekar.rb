def is_kaprekar?(number)
  length = number.to_s.length
  square = number ** 2
  parts = square.to_s.scan(Regexp.new('(.*)(.{' + length.to_s + '})')).flatten
  sum = parts[0].to_i + parts[1].to_i
  sum == number
end

print 'Enter a positive integer: '
number = gets.strip.to_i
puts "#{number} is#{' not' if !is_kaprekar?(number)} a Kaprekar number"
