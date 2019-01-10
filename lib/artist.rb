class Artist
  attr_accessor :name

  @@all = []
  def initialize(name)
    @name = name
    @songs = []
    @@all.push(self)
  end

  def add_song(song)
    @songs.push(song)
    song.artist = self
  end

end
