class Song
    attr_accessor :artist, :name
    @@all = []
 
    def initialize(name, artist = nil)
        @name = name
        @artist = artist
        save
    end
 
    def save
        @@all << self
    end
    
    def self.all
        @@all
    end
   
    def artist_name
        @artist ? self.artist.name : nil
    end

end