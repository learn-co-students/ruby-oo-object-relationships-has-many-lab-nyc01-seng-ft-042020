require 'pry'
class Artist
    attr_accessor :name

    @@song_counts = 0

    def initialize(name)
        @name = name
        @songs = []
    end

    def songs
        Song.all.select {|song| song.artist == self}
    end

    def add_song(song)
        song.artist = self
        @@song_counts += 1
    end

    def add_song_by_name(name_of_song)
        song = Song.new(name_of_song)
        song.artist = self
        @@song_counts +=1
    end

    def self.song_count
        @@song_counts
    end
end