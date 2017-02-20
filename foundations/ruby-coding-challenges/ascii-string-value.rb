# Challenge :
# Write a method that determines and returns the ASCII string value of a string that is passed in as an argument. 
# The ASCII string value is the sum of the ASCII values of every character in the string. 
# (You may use String#ord to determine the ASCII value of a character.)

# Solution :
class FindAscii
  def find_value(string)
    arr = string.scan(/[a-zA-Z]/)
    letters_to_ascii(arr)
  end

  def letters_to_ascii(letters)
    ascii_values = []
    letters.each {|letter| ascii_values << letter.ord}
    calc_final_value(ascii_values)
  end

  def calc_final_value(arr)
    arr.reduce(:+) != nil ? p(arr.reduce(:+)) : p(0)
  end
end

myValue = FindAscii.new()
myValue.find_value('Four score')
myValue.find_value('Launch School')
myValue.find_value('a')
myValue.find_value('')



