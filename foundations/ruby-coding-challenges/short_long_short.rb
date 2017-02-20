# Challenge :
# Write a method that takes two strings as arguments, determines the longest of the two strings, and then returns the result of concatenating the shorter string, the longer string, and the shorter string once again. 
# You may assume that the strings are of different lengths.

# Solution :
def short_long_short(str1, str2)
  str1.length < str2.length ? (str1 + str2 + str1) : (str2 + str1 + str2)
end

short_long_short('abc', 'defgh')
short_long_short('abcde', 'fgh')
short_long_short('', 'xyz')