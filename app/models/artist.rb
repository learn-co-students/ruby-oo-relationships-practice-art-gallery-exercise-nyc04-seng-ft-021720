class Artist

  attr_reader :name, :years_experience

  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all <<  self
    # @paintings = [] # secondary source of truth
  end

  # Returns an array of all the artists
  def self.all
    @@all
  end

  # def create_painting()
  #   painting = Painting.new()

  #   @paintings << painting
  # end

  # Returns an `array` all the paintings by an artist
  def paintings
    Painting.all.select do |painting|
      painting.artist == self
    end
  end

  # Returns an `array` of all the galleries that an artist has paintings in
  def galleries
    # paintings = Painting.all.select do |painting|
    #   painting.artist == self
    # end

    paintings.map do |painting|
      painting.gallery
    end
    # Gallery.all.select do |gallery|
    #   artist_name 
    # end
  end

end
