require 'pry'

class Song

  attr_accessor :name, :artist, :genre
  attr_writer :count
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

  def self.artists
    @@artists.uniq!
  end

  def self.genres
    @@genres.uniq!
  end

  def self.genre_count
    @@genres.group_by{ |v| v.sort! }
    # .flat_map{ |k, v| [k, v.size] }
    # @@genres.map do |k, v|
    #   v = 0
    #   if k == v
    #     v += 1
    #   else
  end

  def self.artist_count
  end


end



  #   @@genres = value
  # end


  # def self.count=(value)
  #   @@count = value
  # end
