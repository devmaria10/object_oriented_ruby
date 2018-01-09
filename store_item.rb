
shoe_1 = {:price => 200, :color => "black", :type => "boot"}
shoe_2 = {:price => 300, :color => "red", :type => "wedge"}
shoe_3 = {price: 400, color: "green", type: "heel"}

# Exercise: Rewrite your store items using a class instead of a hash.
# a) Choose which attributes should have “reader” methods and which attributes should have “writer” methods.
# b) Create an instance from your store item class. Use puts statements to print the 3 attributes individually to the terminal.

class Shoe
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

shoe_1 = Shoe.new(
                  price: 200, 
                  color: "black", 
                  type: "boot"
                  )

shoe_1.price 