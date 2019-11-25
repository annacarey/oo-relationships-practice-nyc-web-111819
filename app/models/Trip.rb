# create files for your ruby classes in this directory
class Trip

    attr_reader :guest, :listing

    @@all = []

    def initialize(guest, listing)
        @guest = guest
        @listing = listing
        self.class.all << self
    end 

    def self.all
        @@all 
    end 

end 