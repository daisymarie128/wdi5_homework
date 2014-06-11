class Animal
  attr_accessor :name, :age, :gender, :species, :toys

  def initialize(name, age, gender, species, toys)
    @name = name
    @age = age
    @gender = gender
    @species = species
    @toys = toys
  end

  def to_S
    "The pets name is #{ @name }, it is #{ @age } years old, it is #{ @gender }, it is a #{ @species }, it has #{ @toys } to play with."
end
end
