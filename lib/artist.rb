require 'pry'

class Artist

  @@all = []
  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def add_song(song)
    song.artist = self
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end

  def self.find_or_create_by_name(name)
    artist_check = self.all.find{|artist_instance| artist_instance.name == name}
    artist_check ? artist_check : Artist.new(name)
  end

  def print_songs
    print_array = Song.all.select {|song| song.artist == self}
    print_array.each {|song| puts song.name}
  end
end
