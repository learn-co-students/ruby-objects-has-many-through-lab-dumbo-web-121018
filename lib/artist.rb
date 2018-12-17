require "pry"

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

  def new_song(title, genre)
    song = Song.new(title, self, genre)
    # binding.pry
  end

  def songs
    Song.all.select do |song|
    self == song.artist
    end
  end

  def genres
    songs.map do |song|
      song.genre
    end
  end


end
