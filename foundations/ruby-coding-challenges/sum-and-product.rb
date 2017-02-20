# Challenge :
# Write a program that asks the user to enter an integer greater than 0, then asks if the user wants to determine the sum or product of all numbers between 1 and the entered integer.

# Solution(1) : 
class Calculation
  attr_accessor :num

  def sum(num)
    (1..num).to_a.reduce(:+)
  end

  def product(num)
    (1..num).to_a.inject(:*)
  end

  def output(num)
    puts "the sum is #{sum(num)} and the product is #{product(num)}"
  end
end

my_calc = Calculation.new

my_calc.output(5) # => the sum is 15 and the product is 120