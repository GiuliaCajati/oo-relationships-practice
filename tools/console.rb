require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

#mangolia2= Bakery.new("Magnolia") #no cookies #NY 
magnolia = Bakery.new("Magnolia") #cookies #DC 
levain = Bakery.new("Levain")

cupcakes = Dessert.new("Cupcakes", magnolia) 
cakes = Dessert.new("Cakes", magnolia)
#cakes = Dessert.new("Cakes", levain) should be a different name??  
cookies = Dessert.new("Cookies" , levain)
biscuit = Dessert.new("Biscuit", magnolia)
muffin = Dessert.new("Muffin", magnolia)
brownie = Dessert.new("Brownie" , levain)

egg = Ingredient.new('egg', 20 )
flower = Ingredient.new('flower', 30)
butter = Ingredient.new('butter', 500)
sugar = Ingredient.new('sugar', 50)
chocolate = Ingredient.new('chocolate', 50)
# egg = Ingredient.new( "egg", cookies )
# flower = Ingredient.new( "flower",biscuit )
# butter = Ingredient.new( "butter", muffin )
# sugar = Ingredient.new( "sugar", brownie )
# chocolate = Ingredient.new( "chocolate", brownie )

DessertIngredient.new(muffin, egg) 
cookies.combine_with_ingredient(egg)
cookies.combine_with_ingredient(flower)
cookies.combine_with_ingredient(sugar)
brownie.combine_with_ingredient(sugar)
egg.combine_with_dessert(brownie)
egg.combine_with_dessert(cookies)
egg.combine_with_dessert(biscuit)

#Recipes 




binding.pry


#cupcakes.bakery ==> Magnolia 
0
