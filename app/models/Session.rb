class Session 

    attr_reader :trainer, :location, :client

    @@all = []

    def initialize(trainer, location, client)
        @trainer = trainer
        @location = location 
        @client = client
        self.class.all << self 
    end 

    def self.all 
        @@all 
    end 
end 