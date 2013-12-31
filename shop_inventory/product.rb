require 'fileutils'
require 'tempfile'

class Product
  def initialize
    @id = @name = @price = @count = @company = nil
  end 

  attr_accessor :id, :name, :price, :count, :company

  def add_product
    id = get_max_id.succ
    File.open('inventory', 'a') do |file|
      file.puts "id: #{id}"
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
    return max if !File.exists?('inventory')
    File.open('inventory', 'r') do |file|
      line = file.readline
      if line.match(/^id: (.*)/)
        temp_id = $1.to_i
        max = temp_id if temp_id > max
      else
        4.times { file.readline }
      end
    end
    max
  end

  def self.remove_product(id)
    return if !File.exists?('inventory')
    temp = Tempfile.new
    File.open('inventory', 'r') do |file|
      line = file.readline
      line.match(/^id: (.*)/)
      temp_id = $1.to_i
      if temp_id != id
        temp << line
        temp << file.readline
        temp << file.readline
        temp << file.readline
        temp << file.readline
      else
        4.times { file.readline }
      end
    end
    FileUtils.mv(temp.path, 'inventory')
  end
end