class Artist

  attr_reader :name, :years_experience

  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select {|p| p.artist == self}
  end

  def galleries
    self.paintings.collect do |painting|
      painting.gallery
    end
    # iterate through painting.all
    # checking if the gallery of the painting is....
  end

  def cities
    self.galleries.collect do |gallery|
      gallery.city
    end
  end

  def self.total_experience
    self.all.reduce(0) {|sum, artist| sum + artist.years_experience}
  end

  def self.most_prolific
    #* Returns an `instance` of the artist with the highest amount of paintings per year of experience.

    # most_artist = 1
    # most = 0
    #
    # self.all.each do |artist|
    #   if artist.paintings.length.to_f / artist.years_experience.to_f > most
    #     most_artist = artist
    #     most = artist.paintings.length.to_f / artist.years_experience.to_f
    #   end
    # end
    #
    # most_artist

    # buncho_o_numbers = self.all.map do |artist|
    #   {artist: artist, float: artist.paintings.length.to_f / artist.years_experience.to_f}
    # end
    #
    # oh_god = buncho_o_numbers.sort_by do |bon|
    #   bon[:float]
    # end
    #
    # oh_god[-1][:artist]

    self.all.sort_by do |artist|
      artist.paintings.length.to_f / artist.years_experience.to_f
    end[-1]

    # for a given artist, grab the amount of paintings they have
    # pablo.paintings.length

    # for a given artist, grab their total years of experiences
    # pablo.years_experience

    # number of paintings / years of experience
    # make an array of ratios

    # returns one artist
  end

  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end







end
