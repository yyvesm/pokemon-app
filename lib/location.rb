class Location

attr_accessor :name, :type, :id, :height, :weight

def initialize(hash)

hash.each do |key, value|
    self.send("#{key}=", value) if self.respond_to?("#{key}=")
end

end


end