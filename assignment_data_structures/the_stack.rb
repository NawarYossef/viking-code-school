# The Stack

# Create a Stack class which implements methods to push, pop, and peek at the top item.
# Add an empty? helper.
# Verify that you can reverse a string with your stack:

class Stack
  attr_accessor :arr, :new_element
 def initialize(arr, new_element)
   @arr = arr
   @new_element = new_element
 end

 def push
   new_arr = Array.new(arr.length + 1)
   new_arr[new_arr.length - 1] = new_element
   counter = 0
   while counter < new_arr.length - 1
    new_arr[counter] = arr[counter]
    counter += 1
   end
   new_arr
 end

 def pop
   new_arr = Array.new(arr.length - 2)
   popped_ele = arr[arr.length - 1]
   counter = 0
   while counter < new_arr.length - 1
    new_arr[counter] = arr[counter]
    counter += 1
   end
   popped_ele
 end

 def empty?
   true if arr.length == 0
 end

 def peek
   last_el = arr[arr.length - 1]
 end
end

stack = Stack.new([1, 2, 3, 4], 5)
p stack.push
p stack.pop
p stack.peek


