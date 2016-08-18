# Baseline
#
# Create a Planet class with a name attribute.
class Planet
  attr_accessor :name, :type, :diameter, :mass, :moons, :day_length

  # You should be able to instantiate a new Planet object with an associated name.
  # Get creative! Give each instance of Planet at least five attributes. These could be diameters, mass, moons... whatever!
  # Allow these attributes to be set using a parameters in initialize.
  def initialize(name, type, diameter, moons, day_length)
    @name = name
    @type = type
    @diameter = diameter
    @moons = moons
    @day_length = day_length
  end

end
# You should be able to create many different planets with different properties, like Mercury, Venus, Earth, Mars, Jupiter, etc.
