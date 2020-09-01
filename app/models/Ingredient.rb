class Ingredient 
    
    attr_reader :name, :dessert, :calories 

    @@all = []

    def initialize (name, calories) #eggs = Ingredient.new (name, calories, dessert)
        @name = name 
        @@all << self
        @calories = calories 
    end 

    def combine_with_dessert(dessert)
        DessertIngredient.new(dessert, self)
    end

    def dessert #eggs.dessert = [cake, cupcakes....]
        matching_dessert = DessertIngredient.all.select do |recipes|
            recipes.ingredient == self #output all deserts with eggs & ingredient list 
        end 
        matching_dessert.select do |dessert_ingredients|
            DessertIngredient.dessert # take out dessert objects that use this ingredient
    end
    end  
    
    def bakeries
        # Recipes.all.select
    # should return the bakery objects for the bakeries that use that ingredient
    end 

    def self.all 
        @@all
    end
end 

#     def find_all_by_name(ingredient) #find_all_by_name('chocolate') might return ['chocolate sprinkles', 'chocolate mousse', 'chocolate']
# # should take a string argument and return an array of all ingredients that include that string in their name
# #(like 'chocolate' == 'chocolate') #self
#     end 





