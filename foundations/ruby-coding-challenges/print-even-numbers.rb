# Challenge :
# Print the even numbers from 1 to 99, inclusive. All numbers should be printed on separate lines.

# Solution(1) : 
(1..99).each {|num| p num if num.even?}

# Solution(2) : 
(1..99).each {|num| p num if num % 2 == 0}