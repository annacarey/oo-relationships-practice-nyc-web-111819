class Bakery

    attr_reader :name 
    @@all = []

    def initialize(name)
        @name = name 
        self.class.all << self
    end 

    def self.all
        @@all 
    end 

    def desserts
        Dessert.all.select do |dessert|
            dessert.bakery == self 
        end 
    end 

    def ingredients
        ingredients = []
        Ingredient.all.each do |ingredient|
            self.desserts.each do |dessert|
                if dessert.ingredients.include?(ingredient)
                    ingredients << ingredient 
                end 
            end 
        end 
        ingredients 
    end 

    def shopping_list
        ingredients.reduce("") do |list, ingredient|
            list + ingredient.name + ", "
        end 
    end 

    def average_calories
        total_calories = desserts.reduce(0) do |total, dessert|
            total + dessert.calories 
        end 
        total_calories / desserts.length.to_f
    end 

end 
# - #average_calories
#   - should return a number totaling the average number of calories for the desserts sold at this bakery
# - #shopping_list
#   - should return a string of names for ingredients for the bakery
# end