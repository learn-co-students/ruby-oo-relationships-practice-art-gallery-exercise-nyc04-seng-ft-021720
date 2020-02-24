class Gallery

  attr_reader :name, :city

  @@all = []

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  def paintings
    Painting.all.select{|painting|
      painting.gallery == self
    }
  end

  def artists
    paintings.collect{|painting| painting.artist}
  end

  def artist_names
    artists.collect{|artist| artist.name}
  end

  def most_expensive_painting
    paintings.max_by{|painting| painting.price}
  end
end
