require "pry"

class Genre

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_song(name, artist)
    created_song = Song.new(name, artist, self.name)
    Song.all << created_song
  end

  def songs
  end

  def songs
    Song.all.select do |song|
      song.genre.name == self.name
    end
  end

  def artists
    Song.all.map do |song|
      song.artist
    end
  end

end
