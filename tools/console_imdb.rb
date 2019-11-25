require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
require 'pry'

# Airbnb
# anna = Guest.new("Anna")
# nyc = Listing.new("NYC")
# dean = Guest.new("Dean")
# losangeles = Listing.new("LA")
# spring_break = Trip.new(anna,nyc)
# holidays = Trip.new(dean, nyc)
# thanksgiving = Trip.new(dean, losangeles)

# Gym 
# williamsburg = Location.new("Williamsburg")
# les = Location.new("LES")
# trainer_julia = Trainer.new("Julia")
# trainer_hayden = Trainer.new("Hayden")
# anna = Client.new("Anna")
# anna.assign_trainer(trainer_julia)

# dean = Client.new("Dean")
# dean.assign_trainer(trainer_julia)

# lauri = Client.new("Lauri")
# lauri.assign_trainer(trainer_hayden)

# david = Client.new("David")
# david.assign_trainer(trainer_julia)
# session1 = Session.new(trainer_julia, williamsburg, anna)
# session2 = Session.new(trainer_julia, les, anna)
# session3 = Session.new(trainer_hayden, williamsburg, lauri)
# session4 = Session.new(trainer_hayden, williamsburg, lauri)


# Bakery 
# bakery = Bakery.new("bakery")
# strawberry_shortcake = Dessert.new("strawberry shortcake", bakery)
# strawberry = Ingredient.new("strawberry", strawberry_shortcake, 300)
# cream = Ingredient.new("cream", strawberry_shortcake, 200)
# cake = Ingredient.new("cake", strawberry_shortcake, 400)

# ice_cream_sundae = Dessert.new("ice cream sundae", bakery)
# ice_cream = Ingredient.new("ice cream - strawberry", ice_cream_sundae, 2000)

# IMDB
actor1 = Actor.new("Meryl Streep")
actor2 = Actor.new("Al Pacino")
actor3 = Actor.new("Robert DeNiro")
actor4 = Actor.new("Robert Downey Jr.")
actor5 = Actor.new("Gwyneth Paltrow")

character1 = Character.new("Iron Man", actor4)
character2 = Character.new("Roy Cohn", actor2)
character3 = Character.new("Old Rabbi", actor1)
character4 = Character.new("Pepper Potts", actor5)
character5 = Character.new("Young Vito", actor3)
character6 = Character.new("Michael Corleone", actor2)
character7 = Character.new("DeNiro in Fear", actor3)
character8 = Character.new("Pacino in Fear", actor2)

movie1 = Movie.new("Angels in America")
movie2 = Movie.new("Iron Man")
movie3 = Movie.new("Iron Man 2")
movie4 = Movie.new("Godfather, Part II")
movie5 = Movie.new("Fear")

show1 = Show.new("Iron Man")

episode1 = Episode.new("Ep.1", show1)
episode2 = Episode.new("Ep.2", show1)
episode3 = Episode.new("Ep.3", show1)

appearance1 = Appearance.new(movie1, character2)
appearance2 = Appearance.new(movie1, character3)
appearance3 = Appearance.new(movie2, character1)
appearance4 = Appearance.new(movie2, character4)
appearance5 = Appearance.new(movie3, character1)
appearance6 = Appearance.new(movie3, character4)
appearance7 = Appearance.new(movie4, character5)
appearance8 = Appearance.new(movie4, character6)
appearance9 = Appearance.new(movie5, character7)
appearance10 = Appearance.new(movie5, character8)
appearance11 = Appearance.new(episode1, character1)
appearance12 = Appearance.new(episode1, character4)
appearance13 = Appearance.new(episode2, character1)
appearance14 = Appearance.new(episode2, character4)
appearance15 = Appearance.new(episode3, character1)
appearance16 = Appearance.new(episode3, character4)




binding.pry
0