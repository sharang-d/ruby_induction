require_relative 'product.rb'
class Shopkeeper
  def add_product
    puts 'Enter details of for the product that you want to add'
    print 'Name: '
    name = gets.strip
    print 'Price: '
    price = gets.strip 
    print 'No. of items in stock: '
    count = gets.strip
    print 'Manufacturer: '
    company = gets.strip
    Product.new(name, price, count, company).add_product
  end

  def remove_product
    print 'Enter product id of the product that you wish to remove: '
    id = gets.strip
    
end