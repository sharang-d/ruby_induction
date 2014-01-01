require_relative 'shopkeeper.rb'
require_relative 'customer.rb'
customer = Customer.new
shopkeeper = Shopkeeper.new
STDOUT.sync = true
print "Press 1 if you are the shopkeeper
Anything else if you are a customer: "
if(gets.strip == '1')
  loop do
    puts 'Enter 1 to add a new product'
    puts 'Enter 2 to delete a product'
    puts 'Enter 3 to list all products'
    puts 'Enter 4 to search a product'
    puts 'Enter 5 to edit a product entry'
    puts 'Enter 6 to quit: '
    print 'Your choice: '
    choice = gets.to_i
    case choice
    when 1
      shopkeeper.add_product
    when 2
      shopkeeper.remove_product
    when 3
      puts shopkeeper.list_all_products
    when 4
      result = shopkeeper.search_product
      puts result.nil? ? 'No results' : result
    when 5
      puts shopkeeper.edit_product
    when 6
      break
    end
  end
else
  loop do

    break if true
    
  end
end