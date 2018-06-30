class Song
  @@all = []
  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre) #string name, object artist, object genre
    @name = name
    @artist = artist
    @genre = genre
    @@all << self
    # A song should be initialized with a name, an artist, and a genre, and be saved in the @@all array.
  end

  def self.all #lists each artist in the class variable.
    @@all
  end

end
