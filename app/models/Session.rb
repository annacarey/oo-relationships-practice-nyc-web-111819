class Session 

    attr_reader :trainer, :location 

    @@all = []

    def initialize(trainer, location)
        @trainer = trainer
        @location = location 
        self.class.all << self 
    end 

    def self.all 
        @@all 
    end 
end 