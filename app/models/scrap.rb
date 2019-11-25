# class Trainer 

#     attr_reader :name

#     @@all = []

#     def initialize(name)
#         @name = name
#         self.class.all << self
#     end 

#     def self.all 
#         @@all 
#     end 

#     def clients
#         Client.all.select do |client|
#             client.trainer == self
#         end 
#     end 

#     def locations 
#         clients.map do |client|
#             client.location
#         end 
#     end 

#     def self.most_clients
#         self.all.max_by do |trainer|
#             trainer.clients.length
#         end 
#     end 

# end 

# class Client 

#     attr_reader :name, :location
#     attr_accessor :trainer

#     @@all = []

#     def initialize(name, trainer, location)
#         @name = name
#         @trainer = trainer 
#         @location = location 
#         self.class.all << self
#     end 

#     def self.all
#         @@all
#     end 

#     def assign_trainer(trainer)
#         self.trainer = trainer
#     end 

# end 

# class Location 

#     attr_reader :name 

#     @@all = []

#     def initialize (name)
#         @name = name 
#         self.class.all << self
#     end 

#     def self.all
#         @@all
#     end 

#     def clients
#         Client.all.select do |client|
#             client.location == self 
#         end 
#     end 

#     def trainers 
#         clients.map do |client|
#             client.location 
#         end 
#     end 

#     def self.least_clients
#         self.all.min_by do |location|
#             location.clients.length
#         end 
#     end 

# end 