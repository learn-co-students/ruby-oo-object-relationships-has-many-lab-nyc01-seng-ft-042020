class Author
    attr_accessor :name
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end
    def posts
        Post.all.select do |post|
            post.author == self
    end
end
    def add_post(posting)
         posting.author = self
    end
    def add_post_by_title(n)
        post = Post.new(n)
        post.author = self
    end
    def self.post_count
        Post.all.count
    end
end