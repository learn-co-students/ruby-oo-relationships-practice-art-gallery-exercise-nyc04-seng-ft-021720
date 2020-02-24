class Artist

  attr_reader :name, :years_experience

  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all.push(self)
  end


  def self.all 
      @@all 
  end 

  def paintings   
      Painting.all.select do |paintings|
          paintings.artist == self
      end 
  end 

  def galleries 
      
     gallery = paintings.map do |paintings|
          paintings.gallery
      end 
      gallery.uniq
  end 

  def cities 
      gallery = paintings.map do |paintings|
          paintings.gallery.city
      end 
      gallery.uniq
  end 

  def self.total_experience 
      total_years = self.all.map do |artists|
          artists.years_experience 
      end 
      total_years.sum
  end 

  def self.find_paintings_per_person
      hash = {}
      Painting.all.map do |paintings|
          if !hash[paintings.artist]
              hash[paintings.artist] = 1 
          else 
              hash[paintings.artist] += 1 
          end 
      end 
      hash
  end

  def self.most_prolific
     #x = self.find_paintings_per_person
      #x.max_by { |x,y| y/x.years_experience }
      self.all.max_by do |artist|
          artist.paintings.length / artist.years_experience #MUCHO IMPORTANTO
      end 
      
  end 

  def create_painting(title, price, gallery)
      Painting.new(title, price, self, gallery)
  end


end
