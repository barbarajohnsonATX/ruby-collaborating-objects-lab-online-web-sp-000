class MP3Importer
  attr_accessor :path 
  
  def initialize(filepath)
    @path = filepath
    
  end 
  
  def files(filepath)
    files_array = Dir.entries(filepath)
    mp3_array = []
    files_array.map do |file|
      if file.include?(".mp3") 
        mp3_array << file 
      end 
    end 
    mp3_array
  end 
  
end 
