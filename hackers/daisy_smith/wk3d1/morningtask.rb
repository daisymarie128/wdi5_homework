

p "Talk to Bob"
response = gets.chomp

# def bro(response)
#   puts response.gsub(/[aeio]/,'a'=>'4','e'=>'3','i'=>'1','o'=>'0')
#   end

loop do
  if response.include? "?"
    puts "Sure"
      p "Talk to Bob"
      response = gets.chomp
  elsif response == response.upcase
    puts "Woah, chill out"
        p "Talk to Bob"
    response = gets.chomp
  elsif response.empty?
    puts "Fine. Be that way!"
        p "Talk to Bob"
    response = gets.chomp
  else
    puts "Whatever"
        p "Talk to Bob"
    response = gets.chomp

end
end