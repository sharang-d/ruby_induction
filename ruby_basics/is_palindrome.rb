def palindrome?(string)
  string.gsub!(/\s/, '')
  string.downcase!
  string.reverse == string
end

puts palindrome?('Never odd or even')
puts palindrome?('abcd')
