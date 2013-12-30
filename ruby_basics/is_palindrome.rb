def is_palindrome?(string)
  string.gsub!(/\s/, '')
  string.downcase!
  string.reverse == string
end

puts is_palindrome?('Never odd or even')
puts is_palindrome?('abcd')
