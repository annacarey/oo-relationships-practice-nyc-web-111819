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
williamsburg = Location.new("Williamsburg")
les = Location.new("LES")
trainer_julia = Trainer.new("Julia")
trainer_hayden = Trainer.new("Hayden")
anna = Client.new("Anna")
anna.assign_trainer(trainer_julia)

dean = Client.new("Dean")
dean.assign_trainer(trainer_julia)

lauri = Client.new("Lauri")
lauri.assign_trainer(trainer_hayden)

david = Client.new("David")
david.assign_trainer(trainer_julia)
session1 = Session.new(trainer_julia, williamsburg)
session2 = Session.new(trainer_julia, les)
session3 = Session.new(trainer_hayden, williamsburg)

# Bakery 
# bakery = Bakery.new("bakery")
# strawberry_shortcake = Dessert.new("strawberry shortcake", bakery)
# strawberry = Ingredient.new("strawberry", strawberry_shortcake, 300)
# cream = Ingredient.new("cream", strawberry_shortcake, 200)
# cake = Ingredient.new("cake", strawberry_shortcake, 400)

# ice_cream_sundae = Dessert.new("ice cream sundae", bakery)
# ice_cream = Ingredient.new("ice cream - strawberry", ice_cream_sundae, 2000)

#IMDB
# meryl_streep = Actor.new("Meryl Streep")
# mama_mia = Movie.new("Mama Mia")
# mother = Character.new("mother", meryl_streep, mama_mia)
# six_feet_under = Show.new("Six Feet Under")
# character = Character.new("character", meryl_streep, six_feet_under)


binding.pry
0