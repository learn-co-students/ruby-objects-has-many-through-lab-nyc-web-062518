require 'pry'

class Artist 

	attr_accessor :name

	@@all = []

	def initialize(name)
		@name = name
		@@all << self
	end

	def self.all
		@@all
	end

	def new_song(new_title, genre)
		Song.new(self.name, new_title, genre)
	end

	def songs
	   Song.all.select do |song|
	   	song.artist_name == self.name
  	  end
	end

	def genres
		
	end

end