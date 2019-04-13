class Song 
  attr_accessor :artist, :name
  
 def initialize(name)
   @name = name 
 end 
 
 def artist_name=(name)
   self.artist_name = Artist.find_or_create_by_name(name)
   Artist.add_song(self)
 end 

 def self.new_by_filename(filename) 
    title_artist = filename.split(" - ")
    new_song = self.new 
    new_song.name = title_artist[1].chomp(".mp3")
    new_song.artist = title_artist[0]
    new_song
    
  end 
 
    
 
end 