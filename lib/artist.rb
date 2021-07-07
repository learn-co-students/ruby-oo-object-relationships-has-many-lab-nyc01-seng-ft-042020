class Artist
attr_accessor :name, :songs
    def initialize(name = nil)
        @name = name
        @songs = []
    end

    def add_song(song)
       song.artist = self
    end

    def self.song_count
    Song.all.count
    end

    def add_song_by_name(song)
     song = Song.new(song)
     song.artist = self
    end

  #   def songs
  #  @songs
  #  end

   def songs
    Song.all.select do |song|
     song.artist == self
         end
    end
    
    
 


end




