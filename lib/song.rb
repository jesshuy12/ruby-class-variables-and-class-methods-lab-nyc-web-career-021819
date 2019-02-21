class Song 
  
  @@count = 0
  @@genres = []
  @@artist = []
  
  attr_accessor :name, :artist, :genre
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
  end
  
  def count
  
end