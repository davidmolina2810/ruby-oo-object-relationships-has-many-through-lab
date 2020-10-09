class Genre

  attr_accessor :name

  @@all = [] # hold all genres

  def initialize(name)
    @name = name
    @@all << self # add genre to all genres on init
  end

  def songs
    return Song.all.select {|song| song.genre == self}
  end
  
  def artists
    return songs.map {|song| song.artist}
  end

  def self.all
    return @@all
  end

end
