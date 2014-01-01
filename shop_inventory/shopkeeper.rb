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
    p = Product.new
    p.set(name, price, count, company)
    p.add_product
  end

  def remove_product
    print 'Enter product id of the product that you wish to remove: '
    id = gets.strip.to_i
    Product.remove_product(id);
  end

  def search_product
    puts 'Enter name of the product you wish to search for: '
    Product.search_product(gets.strip)
  end
end