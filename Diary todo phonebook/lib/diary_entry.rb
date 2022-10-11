class DiaryEntry
    def initialize (title, contents)
        @title = title
        @contents = contents
    end
  
    def title
        return @title#returns title as a string
    end
  
    def contents
        return @contents#return contents as a string
    end
  end