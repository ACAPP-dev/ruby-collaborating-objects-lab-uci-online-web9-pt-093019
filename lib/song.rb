require 'pry'

class Song

  @@all = []
  attr_accessor :name, :artist

  def initialize(name)
    @name, @artist = name, artist
    @@all << self
  end

  def self.all
    @@all
  end

  def self.new_by_filename(file_name)
      file_name_array = file_name.split(" - ")
      song = Song.new(file_name_array[1])
      song.artist_name=(file_name_array[0])
      song
  end

  def artist_name=(name_of_artist)
    self.artist = Artist.find_or_create_by_name(name_of_artist)
    self.artist.add_song(self)
    song = self
  end
end
