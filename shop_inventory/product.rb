class Product
  def initialize
    @id = @name = @price = @count = @company = nil
    @@max_id = 0
  end 
  attr_accessor :id, :name, :price, :count, :company
  def add_product
    File.open('inventory', 'a') do |file|
      
    end  
  end
  def self.find_product
    product = nil

    product
  end
end