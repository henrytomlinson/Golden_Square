class DiaryEntry
    def initialize(title, contents) # title, contents are both strings
        @title = title
        @contents = contents
    end
  
    def title
      return @title# Returns title as a string
    end
  
    def contents
      return @contents# Returns contents as a string
    end
  
    def count_words
      return @contents.split(" ").count# Returns the number of words in the contents
    end
  end