class DessertIngredient

    attr_accessor :dessert, :ingredient 

    @@all = [] #cookeis 

    def initialize (dessert, ingredient) #ingredients [] 
        @dessert = dessert
        @ingredient = ingredient 
        @@all << self
    end 

    def self.all 
        @@all 
    end
    
end 