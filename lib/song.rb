class Song
  attr_accessor :name, :genre

  Songs = []

  def initialize (name = "")
    @name = name
    @genre = Genre.new
    Songs << self if Songs.none?{|song| song.name == @name}
  end

  def genre=(genre)
    @genre = genre
    genre.songs << self
  end

#################
# CLASS METHODS #
#################

  def self.reset_song
    Songs.clear
  end

  def self.all
    Songs
  end
end