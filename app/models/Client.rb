class Client 

    attr_reader :trainer, :name 

    @@all = []

    def initialize(name)
        @name = name 
        self.class.all << self 
    end 

    def self.all 
        @@all 
    end 

    def assign_trainer(trainer)
        @trainer = trainer 
    end 

end 