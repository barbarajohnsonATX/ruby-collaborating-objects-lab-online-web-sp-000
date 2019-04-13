class MP3Importer
  attr_accessor :path 
  
  def initialize(filepath)
    @path = filepath
    
  end 
  
  def files(filepath)
    DIR.filepath(".mp3")
  end 
end 
