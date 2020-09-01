#require_relative './Recipes.rb'
require 'pry'
class Dessert #Backery & Dessert relationship (one to many)
    
    attr_accessor :name, :bakery

    @@all = [] 

    def initialize (name, bakery) #ingredients #cupcakes = Dessert.new(cupcakes, Magnolia) 
        @name = name #cupcakes
        @bakery = bakery #cookies.bakery --> Levain 
        @@all << self 
       #@ingredients = [] #[eggs, milk] should be in DessertIngredient file 
    end 

    def combine_with_ingredient(ingredient)
        DessertIngredient.new(self, ingredient)
    end

    #def ingredients #cupcakes.ingredients ==> [eggs, milk]
        #Recipes should return an array of Ingredient objects for the dessert
    #end 

    # def calories 
    #     #DessertIngredient 
    #     # should return a float totaling all the calories for all the ingredients included in that dessert
    # end

    def self.all 
        @@all 
    end 
        
end 


#cupcakes = Dessert.new ("Cupcakes","Magnolia")
#binding.pry