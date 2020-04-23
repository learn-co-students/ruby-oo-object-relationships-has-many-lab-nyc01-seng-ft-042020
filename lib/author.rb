class Author
    attr_accessor :name
   
    def initialize(name)
        @name = name
    end

    def posts
        Post.all
    end
   
    def add_post(post)
        post.author = self
    end
   
    def add_post_by_title(title)
        post_name = Post.new(title.to_s)
        post_name.author = self
    end

    def self.post_count
        Post.all.count
    end

    def author_name
        self.author.name
    end
end
