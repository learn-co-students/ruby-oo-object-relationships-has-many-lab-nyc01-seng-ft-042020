# Post
#   #new
#     is initialized with an argument of a title (FAILED - 13)
#     pushes new instances into a class variable called @@all upon initialization (FAILED - 14)
#   @@all
#     is a class variable set to an array (FAILED - 15)
#   .all
#     is a class method that returns an array of all post instances that have been created (FAILED - 16)
#   #title
#     has a title (FAILED - 17)
#   #author
#     belongs to an author (FAILED - 18)
#   #author_name
#     knows the name of its author (FAILED - 19)
#     returns nil if the post does not have an author (FAILED - 20)
require "pry"
class Post

    attr_accessor :author, :title
    @@all = []

    def initialize(title)
        @title = title

        save
    end



    def save
        @@all << self
    end

    def self.all
        @@all
    end

    def author_name
        # if author
        # binding.pry
        # if self.author == author
        #     author.name
        # end
        author.name if author

    end



end
