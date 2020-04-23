class Song
  attr_accessor :artist, :name, :genre
  @@all = []

  def initialize(name, genre=nil)
    @name = name
    @genre = genre
    save
  end

  def artist_name
    self.artist ? self.artist.name  : nil
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

end
