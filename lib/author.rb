class Author
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def all
        @@all
    end

    def posts
        Post.all.select{|post| post.author == self}
    end

    def add_post(post)
        self.posts << post
        post.author = self
    end

    def add_post_by_title(title)
        post = Post.new(title)
        post.author = self
    end

    def self.post_count
        Post.all.length
    end
end  