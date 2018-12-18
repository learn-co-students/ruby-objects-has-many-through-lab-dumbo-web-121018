require 'pry'

class Genre
  @@all = []

  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def songs
    Song.all.select do |song|
      song.genre == self
    end
  end

  def artists
    artists_all = []

    songs.each do |song|
      artists_all << song.artist
    end

    return artists_all.uniq
  end

  def self.all
    @@all
  end

end
  #binding.pry
