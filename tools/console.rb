require_relative '../app/models/artist.rb'
require_relative '../app/models/gallery.rb'
require_relative '../app/models/painting.rb'

stanley = Artist.new("Stanley", 1)
ryan = Artist.new("Ryan",1)


new_york = Gallery.new("New York Museum", 'New York City')
chicago = Gallery.new("Chicago Art Museum", 'Chicago')


stanley.create_painting('First', 100_000, new_york)
stanley.create_painting('Second', 200_000, chicago)
stanley.create_painting('Second', 200_000, chicago)
stanley.create_painting('Second', 200_000, chicago)
stanley.create_painting('Second', 200_000, chicago)
#Stanley should be 5 paintings/1year so it should be 5

ryan.create_painting('Third', 300_000, new_york)
ryan.create_painting('Third', 300_000, new_york)
ryan.create_painting('Third', 300_000, new_york)
ryan.create_painting('Third', 300_000, new_york)
ryan.create_painting('Third', 300_000, new_york)
ryan.create_painting('Third', 300_000, new_york)
ryan.create_painting('Third', 300_000, new_york)
ryan.create_painting('Third', 300_000, new_york)
#Ryan should be 8paintings/4 years so it should be 2.s



p Artist.most_prolific