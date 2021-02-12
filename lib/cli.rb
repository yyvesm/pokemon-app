class Cli

def welcome
    puts "Welcome to the Pokemon App."
    prompt_for_pokemon
end

def prompt_for_pokemon
    new_location = false

    while !new_location
        puts "Enter Pokemon name or ID."
        input = gets.strip.downcase

        new_location = Location.find_pokemon(input) || Api.get_pokemon_data(input)
        
        if !new_location
           puts "That Pokemon does not exist."
        end
    end
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
       puts "#{location.name.capitalize} is a #{location.type} type."
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
    main_menu
end

def main_menu
    puts "To see another Pokemon's info, enter 1."
    puts "To exit the program, enter 2."
    input = gets.strip
    if input == "1"
        prompt_for_pokemon
    elsif input == "2"
        exit_program
    else
        puts "That is not an option."
        main_menu
    end
end

def exit_program
    abort("Exiting Pokemon App.")
end

end
