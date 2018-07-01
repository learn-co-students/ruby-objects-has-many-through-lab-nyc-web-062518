require "pry"

class Genre

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(name, artist)
    Song.new(name, artist, self)
  end

  def songs
    Song.all.select do |song|
      song.genre == self
      # binding.pry
    end
  end

  def artists
    Artist.all.each do
      Song.all.select do |song|
        song.genre == self
      end
    end
  end
end
