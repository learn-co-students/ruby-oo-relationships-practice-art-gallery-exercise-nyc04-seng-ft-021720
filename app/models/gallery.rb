class Gallery

  @@all = []

  attr_reader :name, :city

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
    # @paintings = []
  end

  def self.all
    @@all
  end

  # def paintings
  #   @paintings
  # end

end
