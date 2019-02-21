class Song 
  
  @@count = 0
  @@genres = []
  @@artists = []
  
  attr_accessor :name, :artist, :genre
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1        #adds 1 to count when new song is created
    @@artists << artist     #pushing artist values into array
    @@genres << genre       #pushing genre values into array
  end
  
  def self.count      
    @@count           #returns total songs created
  end
  
  def self.artists
    @@artists.uniq    #unique values only
  end
  
  def self.genres
    @@genres.uniq     #unique values only
  end
  
  def self.genre_count
    genre_count = {}
    @@genres.each do |genre|
      genre_count[genre] += 1 
    end
    genre_count
  
  
  
  
  

end