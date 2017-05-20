require 'pry'

class Song

attr_accessor :name, :artist

def initialize(name)
  @name = name
end

def self.new_by_filename(filename)
  filename = filename.split(" - ")
  song = Song.new(filename[1])
  song.artist = Artist.find_or_create_by_name(filename[0])
  unless song.artist.nil?
    song.artist.songs << song.name
  end
  song
  # binding.pry
end



end ###END OF SONG CLASS###
