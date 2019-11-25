class Listing

    attr_reader :city 

    @@all = []

    def initialize(city)
        @city = city
        self.class.all << self 
    end 

    def self.all
        @@all 
    end 

    # number of trips for this listing
    def trips
        Trip.all.select do |trip|
            trip.listing == self
        end 
    end 

    def trip_count
        trips.length
    end 

    # of guests who used this listing
    def guests 
        trips.map do |trip|
            trip.guest
        end 
    end 

    def self.find_all_by_city(city)
        self.all.select do |listing|
            listing.city == city 
        end 
    end 

    def self.most_popular
        self.all.max_by do |listing|
            listing.trip_count
        end 
    end 

end 