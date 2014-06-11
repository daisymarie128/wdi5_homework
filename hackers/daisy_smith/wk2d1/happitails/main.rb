require 'pry'
require 'pry-debugger'

require_relative 'animal'
require_relative 'client'
require_relative 'shelter'

shelter = Shelter.new('happitails')
client = nil

def menu
  puts `clear`
  print '(L)ists, (A)nimal adding and adopting, (C)lient Input or (Q)uit.'
  gets.chomp.downcase
end

response = menu
while response != 'q'
  case response
  when 'l'
    print 'Choose: (A)nimal List or (C)lient List.'
    reply = gets.chomp.downcase
    if reply == 'a'
      puts shelter.animals.to_s
      puts "Press enter to continue"
      gets
      menu
    else reply == 'c'
      puts shelter.clients.to_s
      gets
      menu
    end

    when 'a'
    print "Would you like to (p)ut pet up for adoption or (a)adopt a pet? (q)uit "
    adopt_choice = gets.chomp.downcase
    while adopt_choice != 'q'
      case adopt_choice
      when 'p'
        p "What is your pets name?"
        name = gets.chomp
        p "How old is your pet?"
        age = gets.chomp
        p "Is your pet male or female?"
        gender = gets.chomp.to_sym
        p "what kind of animal do you have?"
        species = gets.chomp.to_sym
        p "What toys does your pet have?"
        toys = gets.chomp.split(',')
        shelter.animals[name] = Animal.new(name, age, gender, species, toys)
        puts "Your pet has been added to our data base"
      when 'a'
        puts "These are the animals that are up for adoption: "
        puts shelter.animals.keys
        print "What's the name of the animal being adopted? "
        animal_name_adopt = gets.chomp
        shelter.animals.delete(animal_name_adopt)
        puts "Thank you, you have successfuly adopted #{ animal_name_adopt}"
      end

      print "Would you like to (p)ut pet up for adoption or (a)adopt a pet? (q)uit "
      adopt_choice = gets.chomp.downcase
     end
  when 'c'
    print "Would you like to add a client? (Y)es (N)o "
    answer = gets.chomp.downcase
    if answer == 'y'
      print 'Name: '
      name = gets.chomp
      print 'Number of children: '
      num_kids = gets.to_i
      print 'Age: '
      age = gets.to_i
      print 'Number of pets: '
      num_pets = gets.to_i
      client = Client.new(name, num_kids, age, num_pets)
      shelter.clients[name]=client
      puts 'Client has been added! Press return to continue.'
      gets
      menu
    else
      menu
    end
  when 'q'
    puts 'Quit.'
  end
  response = menu
end




