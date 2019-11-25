class Location 
    attr_reader :name 

    @@all = []

    def initialize(name)
        @name = name 
        self.class.all << self 
    end 

    def self.all
        @@all 
    end 

    def sessions
        Session.all.select do |session|
            session.location == self
        end 
    end 

    def trainers
        sessions.map do |session|
            session.trainer
        end 
    end 

    def self.least_clients 
        
    end 
end 