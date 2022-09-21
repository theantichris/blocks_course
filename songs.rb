class Song
  attr_reader :name, :artist, :duration

  def initialize(name, artist, duration)
    @name = name
    @artist = artist
    @duration = duration
  end

  def play
    puts "Playing '#{name}' by #{artist} (#{duration} mins)..."
  end
end

class Playlist
  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
  end

  def play_songs
    @songs.each { |song| song.play }
  end

  def each
    @songs.each { |song| yield(song) }
  end
end

song1 = Song.new("Bleed The Freak", "Alice In Chains", 4)
song2 = Song.new("You Never Even Called Me By My Name", "David Allan Coe", 5)
song3 = Song.new("Elvis Is Everywhere", "Mojo Nixon", 5)

my_playlist = Playlist.new("My Playlist")
my_playlist.add_song(song1)
my_playlist.add_song(song2)
my_playlist.add_song(song3)

my_playlist.each{ |song| song.play }

my_playlist.play_songs
