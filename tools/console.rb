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

# # Gym 
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

#IMDB
# meryl_streep = Actor.new("Meryl Streep")
# mama_mia = Movie.new("Mama Mia")
# mother = Character.new("mother", meryl_streep, mama_mia)
# six_feet_under = Show.new("Six Feet Under")
# character = Character.new("character", meryl_streep, six_feet_under)

#  CROWDFUNDING

u1 = User.new("u1")
u2 = User.new("u2")
u3 = User.new("u3")
u4 = User.new("u4")

project1 = Project.new(u1, "Project1", 1000)
project2 = Project.new(u2, "Project2", 2000)
project3 = Project.new(u3, "Project3", 3000)
project4 = Project.new(u4, "Project4", 4000)

p1 = Pledge.new(u1, project2, 50)
p2 = Pledge.new(u1, project3, 60)
p3 = Pledge.new(u1, project4, 70)
p4 = Pledge.new(u1, project4, 80)
p5 = Pledge.new(u2, project3, 90)
p6 = Pledge.new(u2, project3, 10000)
p7 = Pledge.new(u2, project4, 10)
p9 = Pledge.new(u3, project4, 30)


binding.pry
0