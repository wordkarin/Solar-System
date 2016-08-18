# Create a SolarSystem class that has an attribute planets that has zero to many Planet instances.
class SolarSystem
  attr_accessor :name, :planets

  def initialize(name)
    @name = name
    @planets = []
  end

# Create a method that adds a single planet to a solar system
  def add_planet(planet)
    @planets << planet
  end

# Create a method that adds a list of planets to an existing list of planets
  def add_planets(planet_list)
    @planets += planet_list
  end

# Print the list of planets.
  def print_planets
    puts "Hi, welcome to the #{@name} solar system."
    puts "I know about #{@planets.length} planets. They are: "

    @planets.each_with_index do |planet, i|
      puts "#{i + 1}. #{planet.name}"
    end
  end

# Print the details about the planet in question. User enters a number that corresponds to the planet's index in the @planets array.
  def print_planet_details(planet_index)
    user_planet = @planets[planet_index]
    planet_moons = ": "

    user_planet.moons.each_with_index do |moon, i|
      if i == 0
        planet_moons += moon
      else
        planet_moons += " | #{moon}"
      end
    end

    puts "The planet #{user_planet.name} is a #{user_planet.type} planet."
    puts "#{user_planet.diameter}km in diameter. The planet rotates completely in #{user_planet.day_length} hours."
    puts "#{user_planet.moons.length} moon(s)#{planet_moons}"
  end

  def explore_solar_system
    puts "\nUse the number of the planet to get more info, or type 0 to exit."
    # user_planet is holding the index of the @planets that corresponds to the planet they want.
    # NOTE: I have to use the index to get the planet back, because I'm using an array. If I want to use a string (like the name of the planet) to get info back, would want to use a hash, so I can use a string key to get back the planet info.
    planet_index = (gets.chomp.to_i - 1)

    until planet_index == -1
      if planet_index >= 0 && planet_index < @planets.length
        print_planet_details(planet_index)
        puts "\nWant details about another planet? Use the number to print details.\nOtherwise, type 0 to exit.\n\n" #puts the list again?
        planet_index = (gets.chomp.to_i - 1)
      else
        puts "There are only #{planets.length} planets in this solar system. Try again or type 0 to exit.\n\n"
        planet_index = (gets.chomp.to_i - 1)
      end
    end
  end
end
