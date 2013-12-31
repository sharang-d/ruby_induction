require_relative 'shopkeeper.rb'
require_relative 'customer.rb'
customer = Customer.new
shopkeeper = Shopkeeper.new
STDOUT.sync = true
print "Press 1 if you are the shopkeeper
Anything else if you are a customer "
if(gets.strip == '1')
  loop do
    puts 'Enter 1 to add a new product'
    puts 'Enter 2 to delete a product'
    choice = gets.strip.to_i
    case choice
    when 1
      shopkeeper.add_product
    when 2
      shopkeeper.remove_product
    end
    print "Enter 'exit' to quit: "
    break if gets.strip.casecmp('exit').zero?
  end
end