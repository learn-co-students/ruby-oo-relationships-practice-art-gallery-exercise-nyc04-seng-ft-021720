require_relative '../config/environment.rb'

lee = Artist.new("Lee Bontecou", 20)
daryl = Artist.new("Daryl", 21)

stanley_lee = Gallery.new("Stanley Lee Gallery", "New York City")
phyllis_kind = Gallery.new("Phyllis Kind Gallery", "Chicago")


flatiron = Painting.new("Flatiron", 1_000_000, daryl, stanley_lee)
untitled = Painting.new("Untitled", 800_000, lee, phyllis_kind)


binding.pry

puts "Bob Ross rules."
