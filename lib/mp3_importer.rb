class MP3Importer
  attr_accessor :path 
  
  def initialize(filepath)
    @path = filepath
    
  end 
  
  def files(filepath)
    files_array = Dir.entries(filepath)
  end 
end 
