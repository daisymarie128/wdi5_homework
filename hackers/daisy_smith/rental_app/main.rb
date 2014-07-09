require 'pry'
require 'pry-debugger'

require_relative 'appartment'
require_relative 'building'
require_relative 'tenant'



def menu
p "Would you like to add a (b)uilding, (a)ppartment or (t)enant?"
gets.chomp.downcase
end





  choice = menu
while choice != 'q' do
  if choice == 'b'
    puts "name your building"
    building_name = gets.chomp
    puts "What is the buildings address?"
    @address = gets.chomp
    puts "What style is the building?"
    @style = gets.chomp.to_sym
    puts "Does your building have a door man? Please answer Yes or No."
    @has_doorman = gets.chomp
    puts "Does your building habe an elevator? Please answer Yes or No."
    @has_elevator = gets.chomp
    puts "How many floors does your building have?"
    @num_floors = gets.chomp
    # your_building = "Your building at #{ @address } is a #{ @style } style of building"
    #     puts your_building
        building_name = Building.new(@address, @style, @has_doorman, @has_elevator, @num_floors)
        puts building_name

  elsif choice == 'a'
    puts "name your appartment"
    appartment_name = gets.chomp
    puts "What is the Square foot of your apprtment?"
    @sqft = gets.chomp.to_i
    puts "How many bedrooms does the appartment have?"
    @num_bathrooms = gets.chomp.to_i
    puts "How many bathrooms does the appartment have?"
    @num_rooms = gets.chomp.to_i
    appartment_name = Appartment.new(@sqft, @num_bathrooms, @num_rooms)
        puts appartment_name
  else choice == 't'
    puts "Pick a user name"
    user_id = gets.chomp
    puts "What is your name?"
    @name = gets.chomp
    puts "What is your age?"
    @age = gets.chomp.to_i
    puts "What is your gender?"
    @gender = gets.chomp.to_sym
    user_id = Tenant.new(@name, @age, @gender)
        puts user_id
end


data_base = []
data_base << building_name

p data_base

# while menu != 'q'
#   menu

end




#   elsif choice == 'a'
#     puts "What is the Square foot of your apprtment?"
#     sqft = gets.chomp.to_i
#     puts "How many bedrooms does the appartment have?"
#     rooms = gets.chomp.to_i
#     puts "How many bathrooms does the appartment have?"
#     bathrooms = gets.chomp.to_i
#   else choice == 't'
#     puts "What is your name?"
#     name = gets.chomp
#     puts "What is your age?"
#     age = gets.chomp.to_i
#     puts "What is your gender?"
#     gender = gets.chomp.to_sym
#   end


# end


# def menu
#   if choice == 'b'
#     puts "What is the buildings address?"
#     @address = gets.chomp
#     puts "What style is the building?"
#     @style = gets.chomp.to_sym
#     puts "Does your building have a door man? Please answer Yes or No."
#     @has_doorman = gets.chomp
#     puts "Does your building habe an elevator? Please answer Yes or No."
#     @has_elevator = gets.chomp
#     your_building = "Your building at #{ @address } is a #{ @style } of building"
#   end
#   puts your_building
# end







# Seed data




# binding.pry

