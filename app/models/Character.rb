# class Character 

#     attr_reader :name, :actor, :movie_or_show

#     @@all = []

#     def initialize(name, actor, movie_or_show)
#         @name = name
#         @actor = actor 
#         @movie_or_show = movie_or_show
#         self.class.all << self
#     end 

#     def self.all
#         @@all 
#     end 

#     def movie_or_show_count

#     end 

#     def self.most_appearances
#         self.all.max_by do |character|
#             character.movie_or_show.count
#         end 
#     end 
#   - should return which character of film/television appears in the most films
#     or tv shows
    
# end 