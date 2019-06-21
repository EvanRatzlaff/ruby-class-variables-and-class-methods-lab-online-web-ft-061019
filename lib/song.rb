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
  end 
  def self.artists
  @@artists.uniq
  end
  def self.genres
    @@genres.uniq
  end 
  def self.genre_count
    genre_count = {}
    @@genres.each do |genre| 
      if genre_count[genre]
      genre_count[genre] += 1 
      else
      genre_count[genre] = 1
      end
    end
    genre_count
  end
  #
  end 
#binding.pry
end 