puts "string1 = #{string1 = 'RUBY parses a file by looking for <br/> one of the special tags that tells it to start interpreting the text as RUBY code. The parser then executes all of the code it finds until it runs into a RUBY closing <br/> tag.'}"

puts "string2 = #{string2 = "RUBY does not require (or support) explicit type definition in variable declaration; a variable's type is determined by the context in which the variable is used."}"

puts '5) Find occurrence of RUBY from string 1.'
p string1.scan(/RUBY/)

print "6) Find the positions where RUBY occurs in the string 1.\nPositions: "
string1.scan(/RUBY/) { print "#{Regexp.last_match.offset(0).first} " }

puts "\n7) Create array of words in string 1 & print them using a recursive function."


puts '8) Capitalise string 1'
puts string1.upcase

puts '9) Combine string 1 & 2.'
puts string1 + string2

=begin
10) Print current date.
11) print 12th Jan 2012
12) add 7 days in current date
13) Cut the string 1 into 4 parts & print it.
14) Divide the string 1 by occurrences of '.'. Combine the array in reverse word sequence
15) Remove the HTML characters from string.
16) Print the 'RUBY' word from string 1 by traversing it using string functions
17) Find the length of string 1 & 2.
18) Compare two dates. (12-04-2010 & 12-05-2011). Calculate the days between these two dates.
19) Print date after 20 days from current date
20) Print date in array format.
21) write regex for email for only weboniselab domain
22) write regex for phone no format : '+78' followed by 8 nos. 
e.g. +7898328732
23) finding site name and type from a url string using regex
 http://www.xyz.com/classid/17950142?type=mandatory
24) write regex for this format
 a.bcdef0000000000000e+05
25) Write Regex for Following date format
e.g 1) 11th Nov 2013 12:34:46 ,e.g 2) 1st Dec 2010 8:59:43
=end
