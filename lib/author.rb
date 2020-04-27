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
        Post.all.select { |post| post.author == self}
    end

    def add_post(post)
        post.author = self
    end

    # The `#add_song_by_name` method should take in an argument of a name (or title),
    #     use that argument to create a new song (or post) and _then_ associate the
    #     objects.

    def add_post_by_title(title)
        post = Post.new(title)
        post.author = self
    end

    def post_count
        Posts.all.length
    end

end
