# Challenge :
# Build a method that reverses any string you put into it, and don't use the built-in reverse.
# Solution :
def my_reverse(string)
  output = ''
  string.split('').each {|letter| output = letter + output}
  output
end

puts my_reverse("Blah!")




