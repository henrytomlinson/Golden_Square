class Diary
    def initialize
        @entries = []
    end
        
    def add(entry) #instance of DiaryEntry
        @entries << entry
    end
  
    def entries #this will return list of the diary entries
        return @entries
    end
end
