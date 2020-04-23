class Artist
    @@all = []

    attr_accessor :name, :song

    def initialize(name)
        @name = name
    end

    # def self.all
    #     @@all
    # end

    def songs
        @all.select {|artist| song.artist == self}
    end

    def add_song(name)
        name.artist = self
    end


    def self.song_count
        @@all.count
    end





end