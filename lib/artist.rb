require "pry"

class Artist

  attr_reader :name, :song

  @@all = []

  def initialize(name)
    @name = name
    @song = song
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(name, genre)
    Song.new(name, self, genre)
  end

  def songs
    Song.all.select do |song|
      song.artist == self
      # binding.pry
    end
  end

  def genres
    Genre.all.each do
      Song.all.select do |song|
        song.artist == self
      end
    end
  end
end
