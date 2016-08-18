require_relative 'planet'
require_relative 'solar_system'

vega = SolarSystem.new("Vega")

barrayar = Planet.new( "Barrayar", "terrestrial", 5678, ["Bartha", "Boda"], 26.7)
vega.add_planet(barrayar)

earth = Planet.new( "Earth", "terrestrial", 7917.5, ["Moon"], 23.9344444 )
vega.add_planet(earth)

escobar = Planet.new( "Escobar", "terrestrial", 4012.75, ["Serah", "Empo"], 13.456)
vega.add_planet(escobar)

eta_ceta_iv = Planet.new( "Eta Ceta IV", "gas giant", 86881.4, ["Calli", "Ami", "Gani", "Kani"], 9.333333 )
vega.add_planet(eta_ceta_iv)

#list of outer_ring planets
outer_ring = []
horchata = Planet.new( "Horchata", "ice giant", 45987.2, ["Cinna", "Almo"], 25.25 )
outer_ring << horchata

serrano = Planet.new( "Serrano", "lava", 5362.92, ["Pepino", "Sal", "Atsui"], 12.999 )
outer_ring << serrano

# outer_ring.each do |planet|
#   puts planet.name
# end

#adds the outer_ring planets to the solar system
vega.add_planets(outer_ring)

#prints the list of planets
vega.print_planets

#let the user explore the solar system
vega.explore_solar_system
