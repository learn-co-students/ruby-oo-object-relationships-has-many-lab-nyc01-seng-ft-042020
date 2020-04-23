class Post
    @@all = []
    def initialize(title)
        @title = title
        Post.all << @all
    end

    def self.all
        @@all
    end
end