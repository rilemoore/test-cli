class Game
  
  attr_accessor :name, :description, :NA_release, :JP_release, :url
  
  @@all = []
  
  def initialize
    @@all << self
  end
  
  def self.all
    @@all
  end
  
end