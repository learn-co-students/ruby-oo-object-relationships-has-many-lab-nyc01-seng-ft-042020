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

    def songs
        Song.all.select { |song| song.artist == self}
    end

    def add_song(song)
        song.artist = self
    end

    # The `#add_song_by_name` method should take in an argument of a name (or title),
    #     use that argument to create a new song (or post) and _then_ associate the
    #     objects.

    def add_song_by_name(name)
        song = Song.new(name)
        song.artist = self
    end

    def song_count
        Songs.all.length
    end

end
