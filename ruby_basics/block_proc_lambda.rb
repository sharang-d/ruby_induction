print "- Blocks are not objects
- Procs and Lambdas are both objects of class Proc
- A block is the collection of statements that come between '{' and '}'"
puts " or 'do' and 'end'"
puts "- Blocks cannot be assigned to variables unlike Procs and Lambdas"
puts '- Only one block can be passed as a parameter unlike Procs and Lambdas'

puts "---------------------------------\nConsider the following methods:
def proc_inside
  proc { return 'return from proc' }.call
  return 'return from method proc_inside'
end

def lambda_inside
  ->{ return 'return from lambda' }.call
  return 'return from method lambda_inside'
end\n----------------------------------"

def proc_inside
  proc { return 'return from proc' }.call
  return 'return from method proc_inside'
end

def lambda_inside
  ->{ return 'return from lambda' }.call
  return 'return from method lambda_inside'
end

puts "Value returned when proc_inside is called: #{proc_inside}"
puts "Value returned when lambda_inside is called: #{lambda_inside}"
puts '- This shows that Procs return from the method from where they are' \
  + ' invoked when a "return" is encountered whereas lamdbas just continue ' \
  + 'execution from where they were invoked'
puts '- Another difference between Procs and Lambdas is that Lambdas throw' \
  + " an exception when the number of arguments passed don't match the number"\
  + ' of arguments specified in the lambda body'
