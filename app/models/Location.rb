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

    def clients
        sessions.map do |session|
            session.client
        end 
    end 


    def self.least_clients 
        self.all.min_by do |location|
            location.clients.length
        end
    end 
end 