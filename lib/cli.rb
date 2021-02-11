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
    puts "What would you like to learn about #{location.name.capitalize}? (Enter one of the following numbers.)"
    puts "1. Type"
    puts "2. National Pokedex Number"
    puts "3. Height"
    puts "4. Weight"
    user_selection(location)
end

def user_selection(location)
    input = gets.strip

    if input == "1"
       puts "#{location.name.capitalize}'s type is #{location.type}."
    elsif input == "2"
       puts "#{location.name.capitalize}'s National Pokedex Number is #{location.id}."
    elsif input == "3"
       puts "#{location.name.capitalize}'s height is #{location.height} decimeters."
    elsif input == "4"
       puts "#{location.name.capitalize}'s weight is #{location.height} hectograms."
    else
       puts "That is not an option."
       user_selection(location)
    end
end

end
