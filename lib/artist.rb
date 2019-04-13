class Artist 
  attr_accessor :songs, :name
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self 
  end 
  
  def name=(name)
    @name = name 
  end 
  
  def save
    @@all << self 
  end 
  
  def add_song(song)
    
  end 
end 