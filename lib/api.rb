class Api

def self.get_pokemon_data(pokemon)

url = "https://pokeapi.co/api/v2/pokemon/#{pokemon}/"
response = HTTParty.get(url)

if response["Not Found"]
    return nil 
end

pokemon_data_hash = {pokemon_name: pokemon, name: response["name"], type: response["types"][0]["type"]["name"], id: response["id"], height: response["height"], weight: response["weight"]}
Location.new(pokemon_data_hash)
end

end
