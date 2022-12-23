require './item_container.rb'

class Cart
  include ItemContainer
  def initialize()
  end

  def save_to_json(filename)
    filepath = filename + '.json'
    begin
    File.new(filepath, "w")
    File.open(filepath, "w") do |json|
      Item.items.each do |item|
          json.write(JSON.pretty_generate(item.to_h()))
      end
    end

    puts('JSON file successfully generated')
    rescue StandardError => e
        puts(e.message)
        puts('Error invalid output path')
  end
end
  def save_to_cvs(filename)
    filepath = filename + '.csv'
    begin
      File.new(path_csv, "w")
        CSV.open(path_csv, "w", headers: ['Code', 'Name', 'Price', 'Discount', 'Cashback', 'Availble'], write_headers: true) do |csv|
            Item.items.each do |item|
                csv << item.to_s()
            end
        end
        puts('CSV file successfully generated')
        rescue StandardError => e
            puts(e.message)
            puts('Error invalid output path')
    end
  end
end
