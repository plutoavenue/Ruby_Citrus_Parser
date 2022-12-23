#class Item (item.rb), реалізувавши конструктор initialize; метод info (який може приймати на вході блок)
#для видачі інформації про продукт у форматі, який диктує блок; to_s (для коректної роботи метода :puts)
#та to_h (формування хешу на базі даних та назв ключів). Використати необхідні attr_accessor для атрибутів (яких мінімум має бути 5).
class Item
  attr_accessor :name, :code, :price, :cashback, :discount, :availble
  @@items = []
  def initialize(code = 0, name ='', price = 0, cashback = 0, discount = 0, availble = true)
        @code = code
        @name = name
        @price = price
        @cashback = cashback
        @discount = discount
        @availble = availble
  end
  def info()
    yield
  end
  def to_s()
    [
      @code,
      @name,
      @price,
      @discount,
      @cashback,
      @availble
    ]
  end
  def to_h()
    {
      'code' => @code,
      'name'=> @name,
      'price' => @price,
      'discount' => @discount,
      'cashback' => @cashback,
      'availble' => @availble
    }
  end
end
