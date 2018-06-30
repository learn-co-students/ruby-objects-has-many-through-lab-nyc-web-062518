class Song
  attr_accessor :name, :artist, :genre
  @@all = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre  = genre
    @@all << self
  end

  def self.all
    @@all
  end



  # def genre
  #   Song.all.select do |song|
  #     song.genre
  #   end
  # end
  #
  # def artisit
  #   Song.map do |song|
  #     song.artist
  #   end
  # end

end
