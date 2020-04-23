require 'pry'

class Artist
    attr_accessor :name, :songs
    @@songs = []
    def initialize(name)
        @name = name
        Artist.songs << self
        #binding.pry
    end
    def self.songs
        @@songs
    end
    def add_song

    end
end