require_relative '../config/environment.rb'

picaso = Artist.new('pablo piaso', 40)
davinci = Artist.new('leonardo davinci', 70)
vangogh = Artist.new('vincent vangogh', 40)

met = Gallery.new('met', 'nyc')
louvre = Gallery.new('louvre', 'paris')
npg = Gallery.new('national portait gallery', 'dc')

le_reve = Painting.new('le reve', 1000000, picaso, met)
mona_lisa = Painting.new('mona lisa', 11111, davinci, louvre)
starry_night = Painting.new('starry night', 500000000, vangogh, npg)
old_man = Painting.new('old man with guitar', 22222222, picaso, louvre)



binding.pry

puts "Bob Ross rules."
