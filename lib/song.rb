require 'pry'
class Song
    @@all = []
    attr_accessor :name, :artist
    def initialize(name)
        @name = name
        Song.all << self
        # binding.pry
    end
    def self.all
        @@all
    end
    def artist_name
        artist.name if artist
    end
end