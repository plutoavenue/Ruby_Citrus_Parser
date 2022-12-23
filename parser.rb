#class Parser(parser.rb) та метод класу parse_item для “парсингу” окремого елементу. Продемонструвати роботу з регулярними виразами,
# вибираючи тільки ті елементи, які задовольняють певній умові - умова вибору елементів прописується в налаштуваннях додатку.
require './item_container.rb'
require './main_application.rb'

class Parser
  def parse_item(url)
    begin
        html = URI.open(url) { |result| result.read}
        doc = Nokogiri::HTML(html)
        i = 0
        doc.css('.br10').each do |element|
            item = Item.new()
            item.code = element.css(".df").css(".productId-0-2-466").text
            item.name = element.css(".link-0-2-462").css(".title-block").text
            item.price = element.css(".bottom-block").css(".price").text
            item.discount = element.css(".bottom-block").css(".discount").text
            item.cashback = element.css(".bottom-block").css(".cashback").text
            item.availble = element.css(".bottom-block").css(".availble").text
            ItemContainer.add_item(item)
            i= i+1
            if i > 10 then
              break
            end
        end
        puts('Items successfully parsed')
    rescue OpenURI::HTTPError => e
        puts(e.message)
        puts('Error occured while reading from ' + url)
    end
  end
end
