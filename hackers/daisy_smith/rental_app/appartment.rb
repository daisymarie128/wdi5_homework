class Appartment
  attr_accessor :price, :sqft, :num_bathrooms, :num_bedrooms, :occupants

  def initialize(sqft, num_bathrooms, num_bedrooms)
    @price = 0
    @sqft = sqft
    @num_bathrooms = num_bathrooms
    @num_bedrooms = num_bedrooms
    @occupants = []
  end


  def to_s
    "The appartment is #{ @sqft } square feet and has #{ @occupants.length} occupants"
  end

  def occupied?
    @occupants.any?
  end
end


# apt = Appartment.new
# apt.occupants.length == 0

# apt.occupied?