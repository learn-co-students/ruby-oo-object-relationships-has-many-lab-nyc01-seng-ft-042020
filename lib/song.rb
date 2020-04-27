# require 'pry'

class Song
    attr_accessor :name, :artist
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def artist_name
        artist.name if artist
    end
end

# class Post
#     attr_accessor :title
#       @@all = []
#     def initialize(title)
#         @title = title
#         @@all << self
#     end 
    
#     def self.all
#         @@all
#     end
# end
# binding.pry