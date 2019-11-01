class Game
  
  attr_accessor :name, :description, :platform, :release_dates, :url
  
  @@all = []
  
  def initialize
    @@all << self
  end
  
  def self.all
    @@all
  end
  
end