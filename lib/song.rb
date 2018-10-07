class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@genres = []
  @@artists = []
  # @@genre_count = {}

  def initialize(name, artist, genre)
    @@genres << genre
    @@artists << artist
    @@count += 1

    @name = name
    @artist = artist
    @genre = genre

  end

  def self.count
    @@count
  end

  def self.genres
    @@genres = @@genres.uniq
  end

  def self.artists
    @@artists = @@artists.uniq
  end

  def self.genre_count
    hash = {}
    @@genres.uniq.each do |genre|
      hash[genre] = 0
    end
  end

end
