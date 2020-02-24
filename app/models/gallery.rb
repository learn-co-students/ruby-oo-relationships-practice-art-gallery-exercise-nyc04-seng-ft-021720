class Gallery

  attr_reader :name, :city

  @@all = []

  def initialize(name, city)
    @name = name
    @city = city
    @@all.push(self)
  end



  def self.all 
      @@all 
  end 

  def paintings
      Painting.all.select do |paintings|
          paintings.gallery == self 
      end 
  end 



  def artists 
      artists = paintings.map do |paintings|
          paintings.artist 
      end 
  end 

  def artist_names 
      artists.map do |artists|
          artists.name 
      end 
  end 

  def most_expensive_painting
      paintings.max_by {|painting| painting.price}
  end 

end
