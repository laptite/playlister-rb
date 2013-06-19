class Artist
  attr_accessor :name, :songs, :genres

  Artists = []

  def initialize()
    @songs = []
    @genres = []
    Artists << self
  end

  def songs_count
    @songs.size
  end

  def add_song(song)
    @songs << song if !@songs.include?(song)
    @genres << song.genre if !@genres.include?(song.genre)
    song.genre.artists << self if !song.genre.artists.include?(self)
  end

#################
# CLASS METHODS #
#################

  def self.reset_artists
    Artists.clear
  end

  def self.count
    Artists.size
  end

  def self.all
    Artists
  end
end