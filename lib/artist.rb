require "pry"
class Artist

  @@all = []
  attr_accessor :name, :artist, :genre

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(name, genre)
    song = Song.new(name, self, genre)
  end

  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end

  def genres
    array = []
    songs.each do |song|
      array << song.genre
    end
    array
  end

end
