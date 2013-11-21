require 'pp'

class Jukebox

  def initialize(dir)
    jukebox_data = getdata(dir)
    parse_data = parse(jukebox_data)
    # Objects
  end

  # Initialization helper methods.

  def getdata(dir)
    file_names = []
    Dir.foreach(dir){|file| file_names << file}
    file_names.shift(2)
    file_names
  end

  def parse(jb_data)
    data_arr = []

    jb_data.each do |file|
      artist, rest_of_data = file.split(' - ') 
      song,   rest_of_data = rest_of_data.split(' [')
      genre,  rest_of_data = rest_of_data.split(']')
      data_arr << [artist, song, genre]
    end
    data_arr
  end

end