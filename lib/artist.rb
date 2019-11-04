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

  Artist.new(name) if def self.find_or_create_by_name(name)
    self.all.find do |artist_instance|
      artist_instance.name == name
    end == nil









    #artist_return = []
    #artist_return = self.all.select do |artist_object|
    #  artist_object.name == name
    #end
    #artist_return.empty? ? artist = Artist.new(name) : artist_return[0]
  end

  def print_songs
    print_array = Song.all.select {|song| song.artist == self}
    print_array.each {|song| puts song.name}
  end
end
