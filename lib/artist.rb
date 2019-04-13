class Artist 
  attr_accessor :songs, :name
   
  def initialize(name)
    @name = name 
    @songs = [] #artist has many songs 
  end 
  
  def name=(name)
    @name = name 
  end 
  
  def self.save
    @@all << self 
  end 
  
  def add_song(song)
    @songs << song 
  end 
end 