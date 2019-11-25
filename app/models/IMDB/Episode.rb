class Episode

    attr_reader :name, :show

    @@all = []

    def initialize(name, show)
        @name = name 
        @show = show
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

    
    def actors
        actors = characters.map do |character|
            character.actor
        end
    end

    def on_the_big_screen
        Movie.all.select {|movie| movie.name == self.name}
    end

end 