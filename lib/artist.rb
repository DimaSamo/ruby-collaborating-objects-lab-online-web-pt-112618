class Artist
  attr_accessor :name
  attr_reader :songs

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    @@all.find do |artist|
      artist.name == name
    end
  end

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
