require_relative '../config/environment.rb'
require 'faker'

# ARTISTS
bacon = Artist.new("Francis Bacon", 30)
picasso = Artist.new("Pablo Picasso", 50)
pollock = Artist.new("Jackson Pollock", 60)

# GALLERIES
dia = Gallery.new("Dia:", "Beacon")
moma = Gallery.new("MOMA", "New York City")
gagosian = Gallery.new("Gagosian", "New York City")

# PAINTINGS
head_iv = Painting.new("Head IV", 500_000, bacon, gagosian)
painting_1946 = Painting.new("Painting 1946", 1_000_000, bacon, moma)
la_vie = Painting.new("La Vie", 2_000_000, picasso, moma)
mural = Painting.new("Mural", 300_000, pollock, gagosian)
starry = Painting.new("Starry Night", 3_000_000, picasso, dia)

binding.pry

puts "Bob Ross rules."
