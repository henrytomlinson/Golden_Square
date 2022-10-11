class Playlist
  def initialize
    @songs=[]
  end
    
    def add(song) # song is a string return nothing
        fail "no song given" if song.empty?
        @songs << song  
    end

    def play_list #returns list of the songs added
        return @songs
    end

end

