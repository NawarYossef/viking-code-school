# Challenge :
# Build a program that displays when the user will retire and how many years she has to work till retirement.

# Solution :
class Retire
  attr_accessor :age, :retirement

  def how_old?()
    puts "What is your age?"
  end

  def retirement_age?()
    puts "At what age would you like to retire?"
  end

  def calc_retire()
    total = (retirement - age) + 2016
    output_message(total)
  end

  def output_message(output)
    puts "It's 2016. You will retire in #{output}"
  end
end

person = Retire.new

person.how_old?()
age = gets.chomp.to_i
person.age = age

person.retirement_age?()
retirement = gets.chomp.to_i
person.retirement = retirement

person.calc_retire()
