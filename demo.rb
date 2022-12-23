#файл demo.rb призначений для запуску додатку та демонстрації результатів.  Результатом роботи є згенеровані два файли
#з даними, які одержані з сайту.

mainapp = MainApplication.new("https://www.ctrs.com.ua/ru/televizory/brand-lg/", "out.csv","out.json")
#TODO
html = URI.open(mainapp.url)
doc = Nokogiri::HTML(html)
