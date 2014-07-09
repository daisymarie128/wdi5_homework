# require 'pry'

# word = 'listen'.split("")
# result = %w(enlists google inlets banana).include? word

# p result

# if list.contain?(word.split) do |anagram|
#   print anagram
# end

# end

p word = 'listen'
p array = %w(enlists google inlets banana)
array = array.select do |w|
  p w if word.split("").sort == w.split("").sort
end



 # binding.pry