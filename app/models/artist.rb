class Artist

  @@all = []

  attr_reader :name, :years_experience

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  # Returns an array of all the artists
  def self.all 
    @@all
  end

  # Returns an array all the paintings by an artist
  def paintings
    Painting.all.select {|painting| painting.artist == self}
  end

  # Returns an array of all the galleries that an artist has paintings in
  def galleries
    self.paintings.map {|painting| painting.gallery}
  end

  # Return an array of all cities that an artist has paintings in
  def cities
    self.galleries.map {|gallery| gallery.city}
  end

  # Returns an integer that is the total years of experience of all artists
  def self.total_experience
    # creates an array of integers from each Artist @years_experience
    artist_experience = @@all.map {|artist| artist.years_experience}
    # returns the sum of the array above
    artist_experience.reduce {|sum, n| sum + n}
  end

  # Returns an instance of the artist with the highest amount of paintings 
  # per year of experience.
  def self.most_prolific
    # get the number of paintings from artist
    # get the years of experience for artist
    # divide # of paintings by # of years experience
    self.all.max_by do |artist|	
      artist.paintings.length / artist.years_experience	
    end
  end

  # Given the arguments of title, price and gallery, creates a new painting 
  # belonging to that artist
  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end

end
