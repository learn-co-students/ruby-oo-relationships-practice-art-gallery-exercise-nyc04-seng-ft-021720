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
    Painting.all.select{ |p| p.gallery == self}
  end

  def artists
    paintings.map { |p| p.artist}
  end

  def artist_names
    paintings.map { |p| p.artist.name}.uniq
  end

  def most_expensive_painting
    paintings.map { |p| p.price}.max
  end

end
