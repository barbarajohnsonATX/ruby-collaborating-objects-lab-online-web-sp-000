class Artist 
  attr_accessor :songs, :name
   
   @@all = []
   
  def initialize(name)
    @name = name 
    @songs = [] #artist has many songs 
  end 
  
  def name=(name)
    @name = name 
  end 
  
  def self.all 
    @@all 
  end 
  
  def save
    @@all << self 
  end 
  
  def add_song(song)
    @songs << song 
  end 
  
  def find_or_create_by_name(name)
    if @@all.detect {|artist| artist.name == name}
        return artist 
    else 
      new_artist = self.new
      new_artist.name = name 
    
      return new_artist
    end 
  end 
  
end 