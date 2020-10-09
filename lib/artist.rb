class Artist

  attr_accessor :name

  @@all = [] # hold all artists

  def initialize(name)
    @name = name
    @@all << self # add artist to all artist on init
  end

  def songs
    return Song.all.select {|song| song.artist == self}
  end

  def new_song(name, genre)
    return Song.new(name, self, genre)
  end

  def genres
    return songs.map {|song| song.genre} # return array of all genres this artist has
  end


  def self.all
    return @@all
  end


end
