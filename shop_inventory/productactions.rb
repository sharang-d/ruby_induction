module ProductActions

  def list_all_products
    result 'No results' if !File.exists?('inventory')
    result = File.read('inventory') 
    result ? result : 'No results'
  end

  def search_product_by_name
    print 'Enter name of the product you wish to search for: '
    name = gets.strip
    return 'No results' if !File.exists?('inventory')
    result = ''
    File.open('inventory', 'r') do |file|
      file.readline
      until(file.eof?)
        line = file.readline
        temp_name = line.match(/^name: (.*)/)[1]
        if temp_name.casecmp(name).zero?
          result << line 
          3.times { result << file.readline }
          break
        else
          4.times { file.readline }
        end
      end
    end
    result == '' ? 'No results' : result
  end

end