class Genre
  @@all = []
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
    @@all << @name
  end

  def new_song(songName, artist) #creates a new song. That song should know that it belongs to the genre.
    newSong = Song.new(songName, artist, self)
    newSong.genre = self
    newSong
  end

  def songs # iterates through all songs and finds the songs that belong to that genre.
    Song.all.select do |song|
      song.genre == self
    end
  end

  def artists #iterates over the genre's collection of songs and collects the artist that owns each song.
    genresSongCollection = Song.all.select do |song|
      song.genre == self
    end

    genresSongCollection.collect do |song|
      song.artist
    end

    # it "has many artists, through songs" do
    #   jay_z = Artist.new("Jay-Z")
    #   kendrick = Artist.new("Kendrick Lamar")
    #   rap = Genre.new("rap")
    #   ninenty_nine_problems = Song.new("99 Problems", jay_z, rap)
    #   humble = Song.new("HUMBLE", kendrick, rap)
    #   expect(rap.artists).to include(jay_z)
    #   expect(rap.artists).to include(kendrick)

  end

  def self.all #lists each artist in the class variable.
    @@all
  end

end
