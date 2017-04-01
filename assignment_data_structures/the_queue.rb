# Create a Queue class which implements the methods enqueue, dequeue and peek.
# Add methods for empty?
# Verify that you can load and unload a string in the same order with your queue.

# Solution :
class Queue
  attr_accessor :element

  def initialize(element)
    @element = element
  end

  def enqueue(ele)
    new_arr = Array.new(element.length + 1)
    new_arr[0] = ele
    counter = 1
    idx = 0
      while counter < new_arr.length
        new_arr[counter] = element[idx]
        counter += 1
        idx += 1
      end
    new_arr
  end

  def dequeue
    new_arr = Array.new(element.length - 1)
    counter = 0
    idx = 1
    while counter < new_arr.length
      new_arr[counter] = element[idx]
      counter += 1
      idx += 1
    end
    new_arr
  end

  def peek #read first element
    element[0]
  end
  
  def empty?
    true if element.size == 0
  end

end


t = Queue.new([1,2,3])
p t.enqueue(4)
p t.dequeue
p t.peek

t = Queue.new("string")
p t.enqueue(34)
p t.dequeue