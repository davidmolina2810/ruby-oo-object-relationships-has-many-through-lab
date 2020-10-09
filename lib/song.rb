class Song

  attr_accessor :name, :artist, :genre

  @@all = [] # hold all songs 

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@all << self # add song to all songs on init
  end

  def self.all 
    return @@all
  end

end