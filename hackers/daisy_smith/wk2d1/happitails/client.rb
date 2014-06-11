class Client
  attr_accessor :name, :children, :age, :num_pets

  def initialize(name, children, age, num_pets)
    @name = name
    @children = children
    @age = age
    @num_pets = num_pets
  end

  def to_S
    "#{ @name } has #{ @children }, they are #{ @age } and have #{ @num_pets }"
end
end