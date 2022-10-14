class Diary
    def initialize
        @entries = []
    end
    
    def add(entry) # entry is an instance of DiaryEntry
        @entries << entry
    end
  
    def entries
        return @entries# Returns a list of DiaryEntries
    end
  
    def count_words
        return @entries.sum(&:count_words)# Returns the number of words in all entries
    end
  
end