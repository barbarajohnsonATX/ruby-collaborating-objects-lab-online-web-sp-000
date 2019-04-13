class MP3Importer
  attr_accessor :path 
  
  def initialize(filepath)
    @path = filepath
    
  end 
  
  def files(filepath)
    files_array = Dir.entries(filepath)
    files_array.collect {|file| file.include?(".mp3") }
    
  end 
end 
