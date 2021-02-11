class Api

def self.get_pokemon_data

url = "https://pokeapi.co/api/v2/pokemon/gengar/"
response = HTTParty.get(url)
binding.pry
end


end

#"https://pokeapi.co/api/v2/type/#{pokemon}/"
#response["types"][0]["type"]["name"]