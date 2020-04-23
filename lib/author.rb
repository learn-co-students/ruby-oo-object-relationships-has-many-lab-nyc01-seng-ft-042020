class Author
    
    attr_accessor :name

    def initialize(name)
        @name = name
        @titles= []
    end

    def add_post(title)
        title.author = self
    end

    def posts
        Post.all.select {|title| title.author == self}
    end

    def add_post_by_title(title)
        title = Post.new(title)
        title.author = self
    end

    def self.song_count
    end


    
end


