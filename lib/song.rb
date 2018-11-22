
require 'pry'

class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []
  @@genre_count = {}
  @@artist_count = {}


  def initialize(name, artist, genre)
    @@count += 1
    @name = name
    @artist = artist
    @genre = genre
    @@genres.push(@genre)
    @@artists.push(@artist)

  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end
  #binding.pry

  def self.genre_count
    @@genres.each do |genre|
      @@genre_count[genre] = 0
    end
    @@genres.each do | genre |
      @@genre_count[genre] += 1
      #binding.
    end
    @@genre_count
  end
  #binding.pry
  def self.artist_count
    @@artists.each do |artist|
      @@artist_count[artist] = 0
    end
    @@artists.each do | artist |
      @@artist_count[artist] += 1
      #binding.
    end
    @@artist_count
  end
end
