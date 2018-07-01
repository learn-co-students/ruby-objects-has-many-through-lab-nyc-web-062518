
class Genre

  attr_accessor :name, :artist

  @@all = []


  def initialize(name)
    @name = name
    @@all << self
  end


  def self.all
    @all
  end

  def songs
    Song.all.select { |song_info| song_info.genre == self}
  end


  def artists
    songs.map { |song_info| song_info.artist}
  end

end
