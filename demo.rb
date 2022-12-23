#файл demo.rb призначений для запуску додатку та демонстрації результатів.  Результатом роботи є згенеровані два файли
#з даними, які одержані з сайту.
require './parser.rb'
require './cart.rb'
require './main_application.rb'

mainapp = MainApplication.new("https://www.ctrs.com.ua/ru/televizory/brand-lg/", "out.csv","out.json")
parser = Parser.new
cart = Cart.new

parser.parse_item(mainapp.url)
cart.save_to_csv()
cart.save_to_json()
