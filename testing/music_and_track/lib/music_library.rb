class MusicLibrary
    def initialize
        @track=[]
    end

    def add(track) # track is an instance of track
        @track << track#track gets added to the library
            #returns nothing
    end

    def all
        return @track#returns a list of track objects
    end

    def search_by_title(keyword) 
        return @track.select do |track| 
            track.title.include?(keyword)
        end
    end
         #keyword is a string
        # return list of tracks with titles that include keyword
end
