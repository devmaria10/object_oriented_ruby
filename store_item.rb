
item_1 = {:price => 200, :color => "black", :type => "boot"}
item_2 = {:price => 300, :color => "red", :type => "wedge"}
item_3 = {price: 400, color: "green", type: "heel"}

# Exercise: Rewrite your store items using a class instead of a hash.
# a) Choose which attributes should have “reader” methods and which attributes should have “writer” methods.
# b) Create an instance from your store item class. Use puts statements to print the 3 attributes individually to the terminal.

class Item
  attr_reader :price, :color, :type
  attr_writer :new_color 

  def initialize(input_options)
    @price = input_options[:price]
    @color = input_options[:color]
    @type = input_options[:type]
  end 

  # def price
  #   @price
  # end

  # def color
  #   @color
  # end 

  # def type
  #   @type
  # end 

  def color=(new_color)
    @color = new_color 
  end 

  def print_info
    puts "The #{@type} is #{@color} and costs #{@price}."
  end 

  def change_price
    @change_price = @change_price * 2
  end 
end 

class Food < Item  

  def initialize(input_options)
    super(input_options)
    @items = input_options[:items]
    @shelf_life = shelf_life
  end 

end 

end 

item_1 = Item.new(
                  price: 200, 
                  color: "black", 
                  type: "boot"
                  )

item_1.price 