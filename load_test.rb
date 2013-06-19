load 'lib/song.rb'
load 'lib/artist.rb'
load 'lib/genre.rb'

require 'pp'

=begin

PLAN OF ATTACK:

TO DO LIST
==========

X 1) Find a way to access the file structure.
X 2) Find a way to access each file name individually.
X 3) Find a way to parse through the data.
4) Load data into objects.

>>> Start Jukebox CLI
  > WAIT ON INSTRUCTIONS FOR THIS


=end

####################
# THIS IS A PARSER #
####################

# This can probably be a method in a class (instance).

file_names = []

Dir.foreach('data/'){|file| file_names << file}
file_names.shift(2) # Removes '.' and '..'

# Artist => before the ' - ' in the string.
# Song   => after the ' - ' but before the ' ['.
# Genre  => after the ' [' and before ']'.

# file = file_names

# file_names.each do |file|
#   artist, data = file.split(' - ')
#   song, data   = data.split(' [')
#   genre, data  = data.split(']')

#   puts "Artist = #{artist}, Song = #{song}, Genre = #{genre}" # => Create our Objects
# end

#############################
# Test for Genre uniqueness #
#############################

# pp Genre.all

# Genre.new("country")
# puts ""
# pp Genre.all

# Genre.new("rap")
# puts ""
# pp Genre.all

# Genre.new("country")
# puts ""
# pp Genre.all

# Genre.new("rock")
# puts ""

############################
# Test for Song uniqueness #
############################

pp Song.all

Song.new("song1")
puts ""
pp Song.all

Song.new("song2")
puts ""
pp Song.all

Song.new("song1")
puts ""
pp Song.all

Song.new("song3")
puts ""
pp Song.all