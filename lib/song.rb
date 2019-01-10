class Song

  attr_accessor :name, :artist
  @@all = []

  def initialize(name)
    @name = name
    @@all.push(self)
  end

  def artist_name
    self.artist.name if self.artist
  end

  def self.new_by_filename(file)
    new_song = Song.new(file.split(" - ")[1])
    new_song.artist = Artist.find_or_create_by_name(file.split(" - ")[0])
  end

  def self.all
    @@all
  end


end
