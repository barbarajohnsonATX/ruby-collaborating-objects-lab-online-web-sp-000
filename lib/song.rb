class Song 
  attr_accessor :artist, :name
  
 def initialize(name)
   @name = name 
 end 
 
 def artist_name=(name)
   new_artist = Artist.find_or_create_by_name(name)
   new_artist.add_song(self)
 end 

  def self.new_by_filename(file_name)
    song = file_name.split(" - ")[1]
    artist = file_name.split(" - ")[0]
    new_song = self.new(song)
    new_song.artist_name = artist
    new_song
  end
 
    
 
end 