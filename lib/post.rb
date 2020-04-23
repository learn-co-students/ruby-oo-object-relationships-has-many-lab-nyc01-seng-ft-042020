class Post
  attr_accessor :author, :title
  @@all = []

  def initialize(title, author=nil)
    @author = author
    @title = title
    save
  end

  def author_name
    self.author ? self.author.name  : nil
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

end
