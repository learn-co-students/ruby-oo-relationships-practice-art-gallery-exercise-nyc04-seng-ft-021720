class Gallery

  @@all = []

  attr_reader :name, :city

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  # Returns an array of all the galleries
  def self.all
    @@all
  end

  # Returns an array of all paintings in a gallery
  def paintings
    Painting.all.select {|painting| painting.gallery == self}
  end

  # Returns an array of all artists that have a painting in a gallery
  def artists
    self.paintings.select{|paintings| paintings.artist}
  end

  # Returns an array of the names of all artists that have a painting in a gallery
  def artist_names
    artist_gallery = self.artists
    artist_gallery.map {|painting| painting.artist.name}
  end

  # Returns an instance of the most expensive painting in a gallery
  def most_expensive_painting
    painting_price = self.paintings.select {|painting| painting.price}
    painting_price.max {|a, b| a.price<=>b.price}
  end

end
