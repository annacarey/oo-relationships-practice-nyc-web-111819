class Dessert

    attr_reader :bakery, :name

    @@all = []

    def initialize(name, bakery)
        @name = name 
        @bakery = bakery 
        self.class.all << self
    end 

    def self.all
        @@all 
    end 

    def ingredients
        Ingredient.all.select do |ingredient|
            ingredient.dessert == self
        end 
    end 

    def calories
        ingredients.reduce(0) do |total, ingredient|
            total + ingredient.calories 
        end 
    end 

end 
