#module ItemContainer(item_container.rb), реалізувавши всередині нього ще два модулі module ClassMethods
#та module InstanceMethods, та callback-метод self.included(class_instance) для розширення функціональності класу.
#module ClassMethods призначений для опису методів класу, які будуть підмішуватися при включенні до класу,
#module InstanceMethods - для опису методів екземплярів класу. В module InstanceMethods реалізувати методи
# add_item, remove_item, delete_items та method_missing для можливості виклику методу show_all_items.
module ClassMethods
  #TODO
end

module InstanceMethods
  #TODO
end

module ItemContainer
  def self.included(class_instance)
      include class_instance
  end
end
