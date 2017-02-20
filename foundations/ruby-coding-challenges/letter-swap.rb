# Challenge :
# Given a string of words separated by spaces, write a method that takes this string of words and returns a string in which the first and last letters of every word is swapped.
# You may assume that every word contains at least one letter, and that the string will always contain at least one word. You may also assume that each string contains nothing but words and spaces

# Solution :
class StringManipulation
  def get_words(string)
    arr = string.scan(/\w+/)
    swap(arr)
  end

  def swap(words)
      words.each do |str|
        str[0], str[-1] = str[-1], str[0]
      end
      p words.join(' ')
    end
end

newString = StringManipulation.new()
newString.get_words('Oh what a wonderful day it is')
newString.get_words('Abcde')
newString.get_words('a')




