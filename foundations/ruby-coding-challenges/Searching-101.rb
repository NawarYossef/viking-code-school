# Challenge :
# Write a program that solicits 6 numbers from the user, then prints a message that describes whether or not the 6th number appears amongst the first 5 numbers.

# Solution :
# create an array or strings that include all choices, the user is asked to input ('1st', '2nd')
# create an empty array in which all user inputs will be stored
# ............................
# create a loop equal to the number of user inputs needed to be colleceted
# ask for user input
# store user input in an array
# exit loop
# if 6th number in array is repeated, display message
# else dislay other message

USER_PROMPT_CHOICES = ['1st', '2nd', '3rd', '4th', '5th', '6th']
USER_CHOICES = []

class Numbers_game

  def prompt_message()
    "Please eneter your "
  end

  def number_is_included_message()
    puts USER_CHOICES.last.to_s + " appears in #{USER_CHOICES[0..4]}"
  end

  def number_not_included_message()
    puts USER_CHOICES.last.to_s + " does not appear in #{USER_CHOICES[0..4]}"
  end
end

user = Numbers_game.new
counter = 0

6.times do
  puts user.prompt_message() + USER_PROMPT_CHOICES[counter]
  input = gets.chomp.to_i
  USER_CHOICES << input
  counter += 1
end

USER_CHOICES[0..4].include?(USER_CHOICES[-1]) ? user.number_is_included_message() : user.number_not_included_message()
