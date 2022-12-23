require './item.rb'

module ClassMethods
  #TODO
#module ClassMethods призначений для опису методів класу, які будуть підмішуватися при включенні до класу
end

module InstanceMethods
  #module InstanceMethods - для опису методів екземплярів класу. В module InstanceMethods реалізувати методи
  # add_item, remove_item, delete_items та method_missing для можливості виклику методу show_all_items.
  def add_item(item)
    Item.items.push(item)
  end

  def remove_item()

  end

  def delete_items()

  end

  def show_all_items()
    Item.items
  end

  def method_misssing()

  end

end

module ItemContainer
  #module ItemContainer(item_container.rb), реалізувавши всередині нього ще два модулі module ClassMethods
  #та module InstanceMethods, та callback-метод self.included(class_instance) для розширення функціональності класу.
  def self.included(class_instance)
    include ClassMethods
    include InstanceMethods
  end
end
