class Cli

def welcome
    puts "Welcome to the Pokemon App."
    prompt_for_pokemon
end

def prompt_for_pokemon
    puts "Enter Pokemon name."
    input = gets.strip.downcase
    new_pokemon = Api.get_pokemon_data(input)
    binding.pry
end




end