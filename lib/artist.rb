require 'pry'

class Artist

attr_accessor :name, :songs, :artist

@@all = []

def initialize(name)
  @name = name
  @songs = []
end

def songs
  @songs
end

def self.all
  @@all
end

def add_song(song)
   song = song
   song.artist = self.name
   @songs << song
end

def save
  @@all << self
end

def self.find_or_create_by_name(name)
  if self.all.detect { |artist| artist.name == name }
  else
    new = Artist.new(name)
    new.save
    new
  end
end

def print_songs
  puts self.songs.collect { |song| song.name }
end


end ### END OF ARTIST CLASS ###
# song = add_song("hello")
# binding.pry
