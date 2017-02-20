# Challenge :
# Write a method that returns true if the string passed as an argument is a palindrome, false otherwise. (A palindrome reads the same forwards and backwards.) Case matters, and all characters should be considered.

# Solution :
def palindrome?(string)
  string == string.reverse 
end

palindrome?('madam') == true
palindrome?('Madam') == false         
palindrome?("madam i'm adam") == false 
palindrome?('356653') == true