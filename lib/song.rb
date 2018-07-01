require 'pry'

class Song 

	attr_reader :artist_name, :genre, :song_name

	@@all = []

	def initialize(artist_name, song_name, genre)
		@song_name = song_name
		@artist_name = artist_name
		@genre = genre
		@@all << self
	end

	def self.all
		@@all
	end

	def artist
		Artist.all.find do |artists|
	   		artists.name == self.artist_name
	   	end
	end
end