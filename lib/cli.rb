class Cli

def welcome
    puts "Welcome to the Pokemon App."
    prompt_for_pokemon
end

def prompt_for_pokemon
    puts "Enter Pokemon name."
    input = gets.strip
    Api.get_pokemon_data
end




end