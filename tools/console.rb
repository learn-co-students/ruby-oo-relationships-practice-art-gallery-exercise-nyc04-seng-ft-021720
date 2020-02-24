require_relative '../config/environment.rb'

jack = Artist.new("Jack Hilscher", 1)
pablo = Artist.new("Pablo Picasso", 50)
met = Gallery.new("The Met", "NYC")
guernica = Painting.new('Guernica', 3, pablo, met)
self_portrait = Painting.new('Self Portrait', 30000000, pablo, met)
skwiggle = Painting.new("5 year old's art on a fridge", 5000, jack, met)
sunflowers = Painting.new("I stole it from Van Gogh", 4000, jack, met)

pablo.create_painting("Old Guitar", 56, met)


binding.pry

puts "Bob Ross rules."
