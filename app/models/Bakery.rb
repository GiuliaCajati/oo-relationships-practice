class Bakery 

    attr_accessor :name 

    @@all = []

    def initialize (name)
        @name = name   
        @@all << self
    end 

    def ingredients
        #Recipes
      # should return an array of ingredient objects for the bakery's desserts
    end 
    
    def desserts 
        #Dessert 
        # should return an array of dessert objects the bakery makes
    end 

    def average_calories
       # should return a float totaling the average number of calories for the desserts sold at this bakery
    end 

    def self.all 
        @@all
    end 

    def shopping_list
    # should return a string of names for ingredients for the bakery
    end 


end 

#Magnolia.ingredients = ==> [eggs, flour... ]