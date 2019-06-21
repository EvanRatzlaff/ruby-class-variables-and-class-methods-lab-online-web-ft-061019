require 'pry'
class Song 
  attr_accessor :name, :genre, :artist
  @@count = 0
  def self.count 
    @@count
  end 
  @@genres = []
  @@artists = []
  
  def initialize(name, artist, genres)
    @name = name 
    @artist = artist
    @genre = genres 
    @@count +=1
    @@genres << @genre
    @@artists << @artist
    #@@genre_count +=1
  end 
  def self.artists
  @@artists.uniq
  end
  def self.genres
    @@genres.uniq
  end 
  def self.genre_count
    @@genre_count = {}
    @@genres each do |genre| 
      if @@genre_count[genre]
        @genre_count[genre] += 1
        end 
  end 
  def self.artist_count
  end 
#binding.pry
end 