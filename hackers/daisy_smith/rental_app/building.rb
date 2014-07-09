class Building
  attr_accessor :adress, :style, :has_doorman, :has_elevator, :num_floors, :appartments

  def initialize(address, style, has_doorman, has_elevator, num_floors)
    @address = address
    @style = style
    @has_doorman = has_doorman
    @has_elevator = has_elevator
    @num_floors = num_floors
    @appartments = {}
  end

  def to_s
    "The #{ @style } building at #{ @address } has #{ @appartments.length } appartments and #{ @num_floors } floors"
  end
end