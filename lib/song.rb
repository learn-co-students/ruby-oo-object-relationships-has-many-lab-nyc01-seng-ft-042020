
class Song
    attr_accessor :name, :artist
    @@all = []
    def initialize(name)
        @name = name
        @artist = nil
        Song.all << self
    end
    def self.all
        @@all
    end
    def artist_name
        if(@artist)
            @artist.name
        else
            nil
        end
    end
end