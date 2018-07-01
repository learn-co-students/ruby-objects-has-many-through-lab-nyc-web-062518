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
		Song.new(artist, name, self.name)
	end

	def songs
	   Song.all.select do |song|
	   	song.genre.name == self.name
  	  end
	end

	def artists
		
	end
	
	
end