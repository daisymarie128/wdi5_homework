# def roman(n)
#   answer = ""
#    i = 0
#   while n >= 999
#     n = n - 1000
#     answer += "M"
#   end
#   puts "Thosand decimal and remainder is #{n}"
#   while n >= 99
#     while n >= 500
#       n = n - 500
#       answer += "D"
#       while n >= 100
#         answer += "C"
#       end
#     end
#   end
#   puts "Hundred decimal and remainder is #{n}"
#   while n >= 10
#     n = n - 10
#     answer += "X"
#     puts answer
#     if n < 4
#       n.times do
#         answer += "I"
#       end
#     elsif n == 4
#       answer += "V"
#       answer[-1,0] += "I"
#     elsif
#       while n >= 5 && n < 9
#         answer += "V"
#         n = n - 5
#         n.times do
#           answer += "I"
#         end
#       end
#     elsif n == 9
#       answer += "IX"
#     end
#     puts answer
#   end
#   return answer
# end

roman_numerals = { 1 => 'I', 4 => 'IV', 5 => 'V', 6 => 'VI', 7 => 'VII', 8 => 'VIII', 9 => 'IX', 10 => 'X', 50 => 'L', 100 => 'C', 500 => 'D', 1000 => 'M'}


year = 1990

array = []
array << year

roman_numerals.each do |number, roman|
  p roman
end

array.each do |number|
  p number
end




