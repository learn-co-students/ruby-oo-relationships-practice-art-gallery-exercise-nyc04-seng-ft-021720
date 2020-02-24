require_relative '../config/environment.rb'

john = Artist.new("John", 30)
frank = Artist.new("Frank", 4)
ed = Artist.new("Ed", 28)

met = Gallery.new("The Met", "NYC")
whitney = Gallery.new("The Whitney", "NYC")

flowers = Painting.new("Flowers", 200, john, met)
rocks = Painting.new("Rocks", 35, frank, met)
stones = Painting.new("Stones", 4990, john, met)
wood = Painting.new("Wood", 450, ed, whitney)


binding.pry

puts "Bob Ross rules."
