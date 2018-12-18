require "pry"
class Genre

  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def self.all
    @@all
  end


  def songs
    Song.all
  end


  def artists
    Song.all.map do |song|
      song.artist
    # binding.pry
  end
  end



end
