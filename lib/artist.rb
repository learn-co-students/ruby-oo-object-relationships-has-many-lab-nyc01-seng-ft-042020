require 'pry'

class Artist

    #@@song_count = 1

    attr_accessor :name

    def initialize(name)
        @name = name
        @songs = []
    end

    def add_song(song)
        song.artist = self
        #@@song_count += 1
    end

    def songs
        Song.all.select {|song| song.artist == self}
    end

    def add_song_by_name(name)
        song = Song.new(name)
        song.artist = self
        #@@song_count += 1
    end

    def self.song_count
        @@song_count
    end



end