class Show

    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name 
        self.class.all << self 
    end 

    def self.all
        @@all 
    end 

    def characters 
        Character.all.select do |character|
            character.movie_or_show == self 
        end 
    end 

    def actors
        characters.map do |character|
            character.actor 
        end 
    end 

end 