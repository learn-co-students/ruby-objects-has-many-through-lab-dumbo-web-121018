class Artist
  @@all = []

  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  # def name
  #   @name
  # end

  def self.all
    @@all
  end

  def new_song(name,genre)
    new_song = Song.new(name,self,genre)
  end

  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end

  def genres
    all_genres = []

    Song.all.each do |song|
      all_genres << song.genre
    end
    return all_genres
  end

end
