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
    Painting.all.select{|painting|
      painting.artist == self
    }
  end

  def galleries
    paintings.collect{|painting|
      painting.gallery
    }
  end

  def cities
    paintings.collect{|painting|
      painting.gallery.city
    }
  end

  def self.total_experience
    @@all.reduce(0){|total, artist|
      total + artist.years_experience
    }
  end

  def self.most_prolific
    @@all.max_by{|artist|
      artist.paintings.length/artist.years_experience
    }
  end

  def create_painting
    Painting.new(title, price, self, gallery)
  end
end
