require 'open-uri'
require 'Nokogiri'

class MainApplication
  attr_accessor :url, :csvoutput, :jsonoutput, :condition
  def initialize(url, csvoutput, jsonoutput)
   @url, @csvoutput, @jsonoutput = url, csvoutput, jsonoutput
  end
end

#здійснити розбір перших десяти даних.
#Результат роботи має бути записаний у файл формату csv та json.

#11) В процесі розробки додатку реалізувати:
#створити файл Gemfile  та описати залежності додатку від сторонніх бібліотек.
#class MainApplication (main_application.rb) для реалізації налаштування додатку, наприклад даних користувача,
#шлях до збереження даних у різних форматах, тощо … та підключення всіх потрібних для коректної роботи додатку бібліотек, файлів, тощо.

#class Item (item.rb), реалізувавши конструктор initialize; метод info (який може приймати на вході блок)
#для видачі інформації про продукт у форматі, який диктує блок; to_s (для коректної роботи метода :puts)
#та to_h (формування хешу на базі даних та назв ключів). Використати необхідні attr_accessor для атрибутів (яких мінімум має бути 5).

#class Cart (cart.rb), реалізувавши конструктор та методи save_to_file,  save_to_json та save_to_cvs для збереження
#у різних форматах інформацію. Також підключити модуль ItemContainer до даного класу.

#module ItemContainer(item_container.rb), реалізувавши всередині нього ще два модулі module ClassMethods
#та module InstanceMethods, та callback-метод self.included(class_instance) для розширення функціональності класу.

#module ClassMethods призначений для опису методів класу, які будуть підмішуватися при включенні до класу,
#module InstanceMethods - для опису методів екземплярів класу. В module InstanceMethods реалізувати методи
# add_item, remove_item, delete_items та method_missing для можливості виклику методу show_all_items.

#class Parser(parser.rb) та метод класу parse_item для “парсингу” окремого елементу. Продемонструвати роботу з регулярними виразами,
# вибираючи тільки ті елементи, які задовольняють певній умові - умова вибору елементів прописується в налаштуваннях додатку.

#файл demo.rb призначений для запуску додатку та демонстрації результатів.  Результатом роботи є згенеровані два файли
#з даними, які одержані з сайту.
