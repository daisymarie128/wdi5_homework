# Write a program that, when given a string of digits, can calculate the largest product for a
# series of consecutive digits of length n.

# For example, for the input '0123456789', the largest product for a series of
# 3 digits is 504 (7 * 8 * 9), and the largest product for a series of 5 digits is 15120
# (5 * 6 * 7 * 8 * 9).

# For the input '73167176531330624919225119674426574742355349194934', the largest product is 23520.

number = '0123456789'

# array = []
# array << number.split('')
# print array.each_slice(3).to_a

array = number.scan(/./).each_slice(3).map(&:join)
number_array = array.map { |x| x.to_i }

number_array.each do |x|
  answer = x * x * x
  p answer
end

p number_array

# p array = number.scan(/.{1,3}/)