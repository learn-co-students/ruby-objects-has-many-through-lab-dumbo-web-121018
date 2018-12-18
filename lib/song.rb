class Song
  @@all = []

  attr_accessor :name, :artist, :genre  #also need a writer method

  def initialize(name,artist,genre)
    @name = name
    @artist = artist
    @genre = genre
    @@all << self
  end

  def self.all
    @@all
  end
end
