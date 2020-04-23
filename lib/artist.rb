class Artist
attr_accessor :name
    def initialize(name = nil)
        @name = name
        @songs = []
    end

    def add_song_by_name(song)
       song.artist = self 
    end
end


class Artist
    attr_accessor :name
   
    def initialize(name)
      @name = name
    
    end
   
    def add_song(song)
      song = Song.new(song)
      song.artist = self
    end
   
    def songs
      Song.all.select {|song| song.artist == self}
    end
  end

