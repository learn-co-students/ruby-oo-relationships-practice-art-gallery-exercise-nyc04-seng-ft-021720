class Painting

  @@all = []

  attr_reader :title, :price, :artist, :gallery

  def initialize(title, price, artist, gallery)
    @title = title
    @price = price
    @artist = artist
    @gallery = gallery
    @@all << self
  end

  # Returns an array of all the paintings
  def self.all
    @@all
  end

  # Returns an integer that is the total price of all paintings
  def self.total_price
    painting_price = self.all.select {|painting| painting.price}
    painting_price.reduce {|sum, n| sum + n}
  end

end
