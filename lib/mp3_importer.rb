require 'pry'

class MP3Importer

  attr_accessor :path

  def initialize(file_path)
    @path = file_path

  end

  def files
    file_array = []
    file_listing = Dir.glob(path+"/*.mp3")
    file_listing.each do |file|
      file_array << file.split("/")[4]
    end
    file_array
  end

  def import
    files.each do |song|
      Song.new_by_filename(song)
    end
  end


end
