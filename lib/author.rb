class Author
    @@all = []

    attr_accessor :name

    def initialize(name)
        @name = name
    end

    def posts
        Post.all.collect {|post| post.author == self}
    end

    def add_post(title)
        article = Post.new(title)
        article.author = self
        @@all << article
    end

    def self.post_count
        @@all.couunt
    end

end
