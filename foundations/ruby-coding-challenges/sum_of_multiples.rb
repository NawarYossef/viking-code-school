# Challenge :
# Write a method that searches for all multiples of 3 or 5 that lie between 1 and some other number, and then computes the sum of those multiples. For instance, if the supplied number is 20, the result should be 98 (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20).
# You may assume that the number passed in is an integer greater than 1.

# Solution :
class Multisum
  def numberSeq(num)
    seq = (2..num).to_a
    findMulti(seq)
  end

  def findMulti(arr)
    all_multiples = []
    arr.each {|num| all_multiples << num if num % 3 == 0 || num % 5 == 0}
    sum_of_mult(all_multiples)
  end

  def sum_of_mult(arr)
    p arr.reduce(:+)
  end
end

multipleSum = Multisum.new

multipleSum.numberSeq(3) == 3
multipleSum.numberSeq(5) == 8
multipleSum.numberSeq(10) == 33
multipleSum.numberSeq(1000) == 234168
