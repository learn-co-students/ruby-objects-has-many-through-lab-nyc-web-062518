class Artist
  @@all = []

  attr_accessor :name, :genre, :artist

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_song(songName, genre)# creates a new song associated with that artist
    newSong = Song.new(songName, self, genre)
    newSong.artist = self #song belongs to artist
    newSong
  end

  def songs # iterates through all songs and finds the songs that belong to that artist. Try using select to achieve this.
    Song.all.select do |song|
      song.artist == self
    end
  end

  def genres # iterates over that artist's songs and collects the genre of each song.
    artistsSongs = Song.all.select do |song|
      song.artist == self
    end

    artistsSongs.collect do |song|
      song.genre
    end
  end

  def self.all
    @@all
  end

end
