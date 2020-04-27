class Author
    attr_accessor :name

     @@all = [] 
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def posts
    Post.all.select {|title| title.author == self}
    end

    def add_post(post)
        post.author = self
    end

    def add_post_by_title(name)
        title = Post.new(name)
        title.author = self
    end

    def self.post_count
        Post.all.count 
    end

end