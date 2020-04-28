class Song
  attr_accessor :name, :artist, :genre
  @@all = []

  def initialize(name, artist=nil, genre=nil)
    @name = name
    @artist
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
