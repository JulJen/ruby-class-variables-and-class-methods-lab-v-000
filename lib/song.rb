require 'pry'

class Song

  attr_accessor :name, :artist, :genre
  # attr_reader :name, :artist, :genre

  # @@artist_count
  # @@genre_count
  @@artists = []
  @@genres = []
  @@count = 0

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
  end

  def self.count
    @@count
  end

  def self.artists(input)
    if input.empty?
      0
    else
      input.to_i
    end
  end

  def self.genre_count
  end

  def self.artist_count
  end


end



  #   @@genres = value
  # end


  # def self.count=(value)
  #   @@count = value
  # end
