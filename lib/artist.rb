class Artist
    attr_accessor :name
   
    def initialize(name)
        @name = name
    end

    def songs
        Song.all
    end
   
    def add_song(song)
        song.artist = self
    end
   
    def add_song_by_name(name)
        song_name = Song.new(name.to_s)
        song_name.artist = self
    end

    def self.song_count
        Song.all.count
    end

    def artist_name
        self.artist.name
    end
end
