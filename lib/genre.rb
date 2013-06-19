class Genre
  attr_accessor :name, :songs, :artists

  Genres = []

  def initialize (name = "")
    @artists = []
    @songs = []
    @name = name
    Genres << self if Genres.none?{|genre| genre.name == @name}
  end

  def count
    @songs.size
  end

#################
# CLASS METHODS #
#################

  def self.reset_genres
    Genres.clear
  end

  def self.all
    Genres
  end
end