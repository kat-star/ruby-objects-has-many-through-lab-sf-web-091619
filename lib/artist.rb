class Artist
  attr_reader :name
  attr_accessor :song

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(name, genre)
    Song.new(name, self, genre)
  end

  def genres
    Song.all.map do |songs|
      songs.genre
    end
  end

  def songs
     Song.all.select do |song|
      song.artist == self
     end
  end
  

end
