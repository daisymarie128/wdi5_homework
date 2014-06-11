class Shelter
  attr_accessor :name, :animals, :clients

  def initialize(name)
    @animals = {}
    @clients = {}
  end

  def to_S
    "#{ @name } has #{ @children }, they are #{ @age } and have #{ @num_pets }"
end
end
