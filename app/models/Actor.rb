class Actor

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
            character.actor == self 
        end 
    end 

end 