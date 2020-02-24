class Gallery

  attr_reader :name, :city

  @@all = []

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select {|p| p.gallery == self}
  end

  def artists
    self.paintings.collect do |painting|
      painting.artist
    end.uniq
  end

  def artist_names
    self.artists.map {|artist| artist.name}
  end

  def most_expensive_painting
    # buncho_o_numbers = self.paintings.map do |painting|
    #   {painting: painting, price: painting.price}
    # end
    #
    sorted_paintings = self.paintings.sort_by do |p|
      p.price
    end
    #
    # self.paintings.find do |p|
    #   p.price == oh_god[-1].price
    # end
    #
    sorted_paintings[-1]

    # return a painting
  end

end
