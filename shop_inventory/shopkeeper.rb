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
    Product.add_product(name, price, count, company)
  end

  def remove_product
    print 'Enter product id of the product that you wish to remove: '
    id = gets.to_i
    details = Product.remove_product(id)
    puts details.nil? ? "No results" : details 
  end

  def search_product
    print 'Enter name of the product you wish to search for: '
    details = Product.search_product_by_name(gets.strip)
  end

  def edit_product
    print 'Enter id of the product that you wish to edit: '
    id = gets.to_i
    if result = Product.search_product_by_id(id)
      puts "Old entry: #{result}"
      puts "Enter new details: "
      print 'Name: '
      name = gets.strip
      print 'Price: '
      price = gets.strip 
      print 'No. of items in stock: '
      count = gets.strip
      print 'Manufacturer: '
      company = gets.strip
      Product.remove_product(id)
      Product.add_product(name, price, count, company, id)
      "Success"
    else
      "Invalid Product Id"
    end
  end

end