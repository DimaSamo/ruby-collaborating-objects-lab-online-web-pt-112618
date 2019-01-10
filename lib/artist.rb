class Artist
  attr_accessor :name
  attr_reader :songs

  @@all = []
  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs.push(song)
    song.artist = self
  end

  def save
    @@all.push(self)
  end

end
