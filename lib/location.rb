class Location

attr_accessor :name, :type, :id, :height, :weight, :pokemon_name

@@all = []

def initialize(hash)

hash.each do |key, value|
    self.send("#{key}=", value) if self.respond_to?("#{key}=")
end

@@all << self

end

def self.all
    @@all
end

def self.find_pokemon(pokemon)
    self.all.find do |loc|
    loc.pokemon_name == pokemon
    end
end

end