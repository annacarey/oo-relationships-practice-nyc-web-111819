class Movie

    attr_reader :name 

    @@all = []

    def initialize(name)
        @name = name 
        self.class.all << self 
    end 

    def self.all
        @@all 
    end 

    def appearances
        Appearance.all.select do |appearance|
            appearance.production == self
        end
    end

    def characters 
        appearances.map do |appearance|
            appearance.character
        end 
    end 

    def self.most_characters
        all.max_by do |movie|
            movie.characters.length
        end
    end

    def actors
        actors = characters.map do |character|
            character.actor
        end
    end

    def self.most_actors
        all.max_by do |movie|
            movie.actors.uniq.length
        end
    end

end 