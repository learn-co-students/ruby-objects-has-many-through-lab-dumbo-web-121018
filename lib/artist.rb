require 'pry'
class Artist
  @@all = []

  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_song(title, genre)
    Song.new(title, self, genre)
  end

  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end

  def genres
    Song.all.map do |song|
      song.genre
    end
  end

  def self.all
    @@all
  end

end
# artist1 = Artist.new("Michael Jackson")
# song1 = Song.new("Billie Jean", artist1, "pop")
# binding.pry
