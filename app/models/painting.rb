class Painting

  attr_reader :title, :price, :artist, :gallery

  @@all = []

  def initialize(title, price, artist, gallery)
    @title = title
    @price = price
    @artist = artist 
    @gallery = gallery 
    @@all.push(self)
  end


  def self.all
      @@all 
  end 

  def self.total_price 
      total_price = self.all.map do |paintings|
          paintings.price 
      end 
      total_price.sum
  end 

end
