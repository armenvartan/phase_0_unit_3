# U3.W7: Build an Electronic Grocery List!

# Your full names:
# 1. Armen Vartan
# 2. Ben Brostoff

# User Stories (As many as you want. Delete the statements you don't need)
# As a user, I want to add grocery items to our list.
# As a user, I want to remove grocery items from our list.
# As a user, I want to be able to display all grocery items at once.
# As a user, I want to create multiple grocery lists.
# As a user, I want to be able to exit and see their completed list.
# As a user, I want to be able to differentiate between groceries I've already gotten
#            and which ones I still need to get.
# As a user, I want to be able to input quantities of each item.
# As a user, I want to be able to change quantities of each item.
# As a user, I want to be able to choose the unit of measurement of each item




# Pseudocode
# Create a class entitled GroceryItem
    #create instance variables item, unit of measurement, quantity
    #create instance variable set to empty array to hold items
    #add following methods: add_item, remove_item, display_list

# Create a class entitled GroceryList
   #add_item
       #create an object
       #add object to array of objects
    #remove_item
      #remove object from our array of objects
    #display_list
      #show in string form items on the list


# Your fabulous code goes here....

class GroceryItem
  attr_accessor :item, :quantity, :unit
  def initialize(item, quantity, unit)
    @item = item
    @quantity = quantity
    @unit = unit
  end
end

class GroceryList
  def initialize
    @list = []
  end

  def add_item(grocery)
    @list << grocery
  end

  def remove_item(grocery)
    @list.delete(grocery)
  end

  def change_quantity(grocery, new_qty)
    grocery.quantity = new_qty
  end

  def change_unit(grocery, new_unit)
    grocery.unit = new_unit
  end

  def display_list
    @list.each{ |grocery| puts "- #{grocery.quantity} #{grocery.unit} : #{grocery.item}" }
  end
end

def start(list)

  puts "Hello, what would you like to do? ('add item', 'display list', 'remove item', 'Done')"

  user_response = gets.chomp.downcase.gsub(" ", "")
  p user_response
  case user_response

    when 'additem'
      puts "What item do you want to add?"
      item = gets.chomp
      puts "How many of the item do you want?"
      quantity = gets.chomp
      puts "What unit of measurement will you be using?"
      unit = gets.chomp


      item = GroceryItem.new(item, quantity, unit)
      p item
      list.add_item(item)

    when 'displaylist'
      list.display_list
    when 'removeitem'

      # list.remove_item(
    when "done"
    else
  end
end



# DRIVER CODE GOES HERE.

apple = GroceryItem.new('apple', 3, 'ea')
pear = GroceryItem.new('pear', 'five', 'lb')
list = GroceryList.new
p list.add_item(apple)
p list.add_item(pear)
list.display_list
list.remove_item(pear)
list.display_list
list.change_quantity(apple, 1)
list.display_list
list.change_unit(apple, '#')
list.display_list
list = GroceryList.new
start(list)
