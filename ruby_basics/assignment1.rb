require 'date'

# modified from activesupport
def ordinalize(number)
  suffix = if (11..13).include?(number % 100)
             'th'
           else
             case number % 10
             when 1; 'st'
             when 2; 'nd'
             when 3; 'rd'
             else    'th'
             end
           end
  "#{number}#{suffix}"
end

def make_parts(string1, number_of_parts)
  part_size, extra_chars = string1.size.divmod number_of_parts
  parts = (1..number_of_parts).to_a.map do |part_number| 
    string1[(part_number.pred * part_size)..((part_number * part_size).pred)] 
  end
  parts[number_of_parts.pred] << string1[(number_of_parts * part_size)..((number_of_parts * part_size) + extra_chars)]
  parts
end

def print_words(iterator = @words.size.pred)
  if iterator.zero?
    puts @words[iterator] 
  else
    print_words(iterator.pred)  
    puts @words[iterator]
  end
end

puts "string1 = #{string1 = 'RUBY parses a file by looking for <br/> one of the special tags that tells it to start interpreting the text as RUBY code. The parser then executes all of the code it finds until it runs into a RUBY closing <br/> tag.'}"

puts "string2 = #{string2 = "RUBY does not require (or support) explicit type definition in variable declaration; a variable's type is determined by the context in which the variable is used."}"

puts '5) Find occurrence of RUBY from string 1.'
p string1.scan(/RUBY/)

print "6) Find the positions where RUBY occurs in the string 1.\nPositions: "
string1.scan(/RUBY/) { print "#{Regexp.last_match.offset(0).first} " }

puts "\n7) Create array of words in string 1 & print them using a recursive function."
@words = string1.split
print_words

puts '8) Capitalise string 1'
puts string1.upcase

puts '9) Combine string 1 & 2.'
puts string1 + string2

puts '10) Print current date.'
puts Time.now.strftime('%d %B %Y')

puts '11) print 12th Jan 2012' # !?
date = Date.parse('12th Jan 2012')
puts date.strftime("#{ordinalize(date.day)} %b %Y")

puts '12) add 7 days in current date'
puts (Time.now + (60 * 60 * 24 * 7)).strftime('%d %B %Y')

puts '13) Cut the string 1 into 4 parts & print it.'
make_parts(string1, 4).each.with_index(1) { |part, index| puts "Part #{index}: #{part}" }

puts "14) Divide the string 1 by occurrences of '.'. Combine the array in reverse word sequence"
puts make_parts(string1, string1.count('.')).map { |part| part.split.reverse.join(' ') }.join

puts '15) Remove the HTML characters from string.'
puts "String1 with HTML tags removed: #{string1.gsub('<br/>','')}"

puts "16) Print the 'RUBY' word from string 1 by traversing it using string functions"
# considering "RUBY" to be an independent word and not a part of a word
string1.split.each { |word| puts word if word=='RUBY' }

puts '17) Find the length of string 1 & 2.'
puts "Length of string1: #{string1.length}\nLength of string2: #{string2.length}"

puts '21) write regex for email for only weboniselab domain'
puts '/^[a-z][a-z0-9_\-.]+@weboniselab\.com$/i'

puts "22) write regex for phone no format : '+78' followed by 8 nos. e.g. +7898328732"
puts '/^\+78\d{8}$/'

puts '18) Compare two dates. (12-04-2010 & 12-05-2011). Calculate the days between these two dates.'
puts "Number of days in between: #{(Date.parse('12-05-2011') - Date.parse('12-04-2010')).to_i}"

puts '19) Print date after 20 days from current date'
puts (Time.now + (60 * 60 * 24 * 20)).strftime('%d %B %Y')

puts '20) Print date in array format.'
today = Date.today
p [today.day, today.month, today.year]

=begin
23) finding site name and type from a url string using regex
 http://www.xyz.com/classid/17950142?type=mandatory
24) write regex for this format
 a.bcdef0000000000000e+05
25) Write Regex for Following date format
e.g 1) 11th Nov 2013 12:34:46 ,e.g 2) 1st Dec 2010 8:59:43
=end
