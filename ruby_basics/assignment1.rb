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

# cut string1 in number_of_parts
def make_parts(string1, number_of_parts)
  part_size, extra_chars = string1.size.divmod number_of_parts
  parts = (1..number_of_parts).to_a.map do |part_number| 
    string1[(part_number.pred * part_size)..((part_number * part_size).pred)] 
  end
  range_start = (number_of_parts * part_size)
  range_end = (number_of_parts * part_size) + extra_chars
  parts[number_of_parts.pred] << string1[range_start..range_end]
  parts
end

# print @words recursively
def print_words(iterator = @words.size.pred)
  if iterator.zero?
    print "#{@words[iterator]}, "
  else
    print_words(iterator.pred)  
    print "#{@words[iterator]}, "
  end
end

string1 = 'RUBY parses a file by looking for <br/> one of the special tags' \
  + ' that tells it to start interpreting the text as RUBY code. The parser' \
  + ' then executes all of the code it finds until it runs into a RUBY ' \
  + 'closing <br/> tag.'

puts "string1 = #{string1}"

string2 = 'RUBY does not require (or support) explicit type definition in' \
  + " variable declaration; a variable's type is determined by the context" \
  + ' in which the variable is used.'

puts "string2 = #{string2}"

puts '5) Find occurrence of RUBY from string 1.'
p string1.scan(/RUBY/)

print "6) Find the positions where RUBY occurs in the string 1.\nPositions: "
string1.scan(/RUBY/) { print "#{Regexp.last_match.offset(0).first} " }

print "\n7) Create array of words in string 1 & print them using a recursive" 
puts 'function.'
@words = string1.split
print_words

puts "\n8) Capitalise string 1"
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
# cut into 4 parts with equal character count
make_parts(string1, 4).each.with_index(1) do |part, index| 
  puts "Part #{index}: #{part}" 
end

print "14) Divide the string 1 by occurrences of '.'."
puts " Combine the array in reverse word sequence"
parts = make_parts(string1, string1.count('.')).map do |part|
  part.split.reverse.join(' ') 
end
puts parts.join

puts '15) Remove the HTML characters from string.'
puts "String1 with HTML tags removed: #{string1.gsub('<br/>','')}"

print "16) Print the 'RUBY' word from string 1 by traversing it using string "
puts "functions"
# considering "RUBY" to be an independent word and not a part of a word
string1.split.each { |word| puts word if word=='RUBY' }

puts '17) Find the length of string 1 & 2.'
puts "Length of string1: #{string1.length}"
puts "Length of string2: #{string2.length}"

print '18) Compare two dates. (12-04-2010 & 12-05-2011).'
puts 'Calculate the days between these two dates.'
print "Number of days in between: "
puts #{(Date.parse('12-05-2011') - Date.parse('12-04-2010')).to_i}"

puts '19) Print date after 20 days from current date'
puts (Time.now + (60 * 60 * 24 * 20)).strftime('%d %B %Y')

puts '20) Print date in array format.'
today = Date.today
p [today.day, today.month, today.year]

puts '21) write regex for email for only weboniselab domain'
puts '/^[a-z][a-z0-9_\-.]+@weboniselab\.com$/i'

print "22) write regex for phone no format : '+78' followed by 8 nos. e.g. "
puts '+7898328732'
puts '/^\+78\d{8}$/'

puts '23) finding site name and type from a url string using regex
http://www.xyz.com/classid/17950142?type=mandatory'
test_url = 'http://www.xyz.com/classid/17950142?type=mandatory'
matches = test_url.scan(/^(.*):\/\/www\.([^\.]+)\.([^\/]+)/).flatten
puts "Protocol: #{matches[0]}\nName: #{matches[1]}\nType: #{matches[2]}"

puts '24) write regex for this format: a.bcdef0000000000000e+05'
puts '/^\d\.\d{5}0{13}e\+05$/'

puts '25) Write Regex for Following date format
e.g 1) 11th Nov 2013 12:34:46 ,e.g 2) 1st Dec 2010 8:59:43'
# Doesn't validate the date. Just matches the pattern
puts '/^\d{1,2}[a-z]{2} [a-z]{3} \d{4} \d{1,2}:\d{2}:\d{2}$/i'
