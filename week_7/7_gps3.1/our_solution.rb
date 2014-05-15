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
    # pseudo code @index_number = @list.index[item] + 1
  end

  def add_item(grocery)
    @list << grocery
  end

  def remove_item(list_number)
    item_index = list_number - 1
    @list.delete_at(item_index)
  end

  def change_quantity(grocery, new_qty)
    grocery.quantity = new_qty
  end

  def change_unit(grocery, new_unit)
    grocery.unit = new_unit
  end

  def show_length #would have used attr_accessor but list.list is potentially confusing
    @list.length
  end

  def display_list
    @list.each_with_index{ |grocery, i| puts "#{i+1}. #{grocery.quantity} #{grocery.unit} : #{grocery.item}" }
  end

  def list_return #would have used attr_accessor but list.list is potentially confusing
    @list
  end

  def question_prompt
    begin
      puts "Please choose a number from the list:"
      self.display_list
      answer = gets.chomp
      throw :abortrequest if answer == 'abort'
      @@item_num = answer.to_i
      raise if @@item_num < 1 || @@item_num > self.show_length
    rescue
      puts "Please type a number from the menu or type 'abort'"
      retry
    end
  end

  def start

    accepted_responses = ['additem', 'displaylist', 'removeitem', 'changequantity', 'changeunit', 'done']

    puts "Hello, welcome to the grocery list creator"
    response = nil

    while response != 'done' do
      catch :abortrequest do
        puts "Please choose from the menu: add item, display list, remove item, change quantity, change unit, done)"
        response = gets.chomp.downcase.gsub(/\s/, "")

        unless accepted_responses.include?(response)
          puts "Please enter a valid response."
        end

        case response
        when 'additem'
          puts "What item do you want to add?"
          item = gets.chomp
          puts "How many of the item do you want?"
          quantity = gets.chomp
          puts "What unit of measurement will you be using?"
          unit = gets.chomp

          item_to_add = GroceryItem.new(item, quantity, unit)
          self.add_item(item_to_add)

        when 'displaylist'
          puts "Here's your list thus far:"
          self.display_list

        when 'removeitem'
          self.question_prompt
          self.remove_item(@@item_num)

        when 'changequantity' #added to user experience
          self.question_prompt
          grocery = self.list_return[@@item_num-1] #object
          old_qty = self.list_return[@@item_num-1].quantity #integer quantity
          puts "What is the new quantity you would like to enter?"
          new_qty = gets.chomp
          self.change_quantity(grocery, new_qty) #object, integer quantity
          puts "You changed the quantity of item # #{@@item_num} from #{old_qty} to #{new_qty}. Here's your new list:"
          self.display_list

        when 'changeunit'
          self.question_prompt
          grocery = self.list_return[@@item_num-1] #object
          old_unit = self.list_return[@@item_num-1].unit #integer quantity
          puts "What is the new unit you would like to enter?"
          new_unit = gets.chomp
          self.change_unit(grocery, new_unit) #object, integer quantity
          puts "You changed the unit of item # #{@@item_num} from #{old_unit} to #{new_unit}. Here's your new list:"
          self.display_list

        when 'done'
          abort("Thanks for using this command line tool!")
        end
      end
    end
  end

end




# DRIVER CODE GOES HERE.

# apple = GroceryItem.new('apple', 3, 'ea')
# pear = GroceryItem.new('pear', 'five', 'lb')
# list = GroceryList.new
# p list.add_item(apple)
# p list.add_item(pear)
# list.display_list
# list.remove_item(2)
# list.display_list
# list.change_quantity(apple, 1)
# list.display_list
# list.change_unit(apple, '#')
# list.display_list
list = GroceryList.new
list.start
