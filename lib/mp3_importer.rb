class MP3Importer

attr_accessor :path

def initialize(path)
  @path = path
end

def files
  files = Dir["#{path}/*.mp3"]

  files.collect do |filename|
  filename.gsub(/.\/spec\/fixtures\/mp3s\//, "")
end
end

def import
  files.each do |filename|
    Song.new_by_filename(filename)
    end
end





end ###END OF MP3IMPORTER CLASS ###

# /Users/chrisdascoli/Desktop/flatiron-school/labs/ruby-collaborating-objects-lab-web-051517/db/mp3s
