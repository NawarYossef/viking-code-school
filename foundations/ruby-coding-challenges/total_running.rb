# Challenge :
# Write a method that takes an Array of numbers, and returns an Array with the same number of elements, and each element has the running total from the original Array.

# Solution :
def running_total(arr)
  total = []
  return [] if arr.length == 0
  (0..arr.length - 1).each do |idx|
    idx == 0 ? total << arr[idx] : total << arr[0..idx].reduce(:+)
  end
  total
end


running_total([2, 5, 13]) == [2, 7, 20]
running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
running_total([3]) == [3]
running_total([]) == []
