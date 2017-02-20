# Challenge :
# Build a program that asks a user for the length and width of a room in meters and then displays the area of the room in both square meters and square feet.
# Note: 1 square meter == 10.7639 square feet

# Solution :

class Room
  attr_accessor :length, :width

  def ask_for_width()
    puts "Enter the width of the room in meters"
  end

  def ask_for_length()
    puts "Enter the length of the room in meters"
  end

  def meters_area(length, width)
    (length * width).to_f
  end

  def feet_area()
    ((meters_area(length, width)) * 10.7639).to_f
  end

  def output_result()
    puts "The area of the room is #{meters_area(length, width)} square meters (#{feet_area().round(2)})."
  end
end

my_room = Room.new

my_room.ask_for_width()
width = gets.chomp.to_i
my_room.width = width

my_room.ask_for_length()
length = gets.chomp.to_i
my_room.length = length

my_room.output_result()