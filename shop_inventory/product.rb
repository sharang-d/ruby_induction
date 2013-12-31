class Product
  def initialize
    @id = @name = @price = @count = @company = nil
  end 

  attr_accessor :id, :name, :price, :count, :company

  def add_product
    File.open('inventory', 'a') do |file|
      file.puts "id: #{get_max_id.succ}"
      file.puts "name: #{name}"
      file.puts "price: #{price}"
      file.puts "count: #{count}"
      file.puts "company: #{company}"
    end
  end

  def self.find_product
    product = nil

    product
  end

  def set(name, price, count, company)
    @name = name
    @price = price
    @count = count
    @company = company
  end

  def get_max_id
    max = 0
    reuturn max if !File.exists?('inventory')
    File.open('inventory', 'r') do |file|
      line = file.readline || ""
      if line.match(/^id: (.*)/)
        temp = $1.to_i
        max = temp if temp > max
      end
    end
    max
  end
  
end