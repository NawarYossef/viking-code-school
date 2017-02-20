# Challenge :
# Build a program that randomly generates and prints Teddy's age. 
# To get the age, you should generate a random number between 20 and 200.

# Solution :

class Teddy
  attr_accessor :num

  def how_old?(num)
    puts "Teddy is #{calc_age(num)} old"
  end

  def calc_age(num)
    rand(num..200)
  end

end

bear = Teddy.new
bear.how_old?(20)