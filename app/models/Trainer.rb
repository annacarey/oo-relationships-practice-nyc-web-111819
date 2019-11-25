class Trainer 

    attr_reader :name 

    @@all = []

    def initialize(name)
        @name = name 
        self.class.all << self 
    end 

    def self.all
        @@all
    end 

    def clients 
        Client.all.select do |client|
            client.trainer == self
        end 
    end 

    def self.most_clients
        self.all.max_by do |trainer|
            trainer.clients.length
        end 
    end 
end 