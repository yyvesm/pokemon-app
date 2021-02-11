class Cli

def welcome
    puts "Welcome to the Pokemon App."
    prompt_for_pokemon
end

def prompt_for_pokemon
    puts "Enter Pokemon name."
    input = gets.strip.downcase
    new_location = Api.get_pokemon_data(input)
    pokemon_options(new_location)
end

def pokemon_options(location)
    puts "What would you like to learn about #{location.name}? (Enter one of the following numbers.)"
    puts "1. Type"
    puts "2. National Pokedex Number"
    puts "3. Height"
    puts "4. Weight"

end