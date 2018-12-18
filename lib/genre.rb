require 'pry'
class Genre
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @songs = []
  end

  def self.all
    @@all
  end

  def songs
    Song.all
  end

  def artists
    Song.all.map { |artist| artist.artist }
  end
end
