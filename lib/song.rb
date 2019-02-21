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
    genre_count = {}              #new empty hash
    @@genres.each do |genre|      #iterate thru @@genres
      if genre_count[genre]       #if genre key value is present,                           increment 1
        genre_count[genre] += 1 
      else
        genre_count[genre] = 1
      end
    end
    genre_count
  end
  
  def self.artist_count
    artist_count = {}              #new empty hash
    @@artists.each do |artist|      #iterate thru @@artist
      if artist_count[artist]     #if genre key value is present,                           increment 1
        artist_count[artist] += 1 
      else
        artist_count[artist] = 1
      end
    end
    artist_count
  end
  
end