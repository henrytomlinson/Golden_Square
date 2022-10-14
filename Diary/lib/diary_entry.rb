class DiaryEntry
    def initialize(title, contents) # title, contents are strings
      # ...
      @title = title
      @contents = contents
    end
  
    def title
        return @title
    end
      # Returns the title as a string
  
    def contents
        return @contents
      # Returns the contents as a string
    end
  
    def count_words
        return @contents.split(" ").count
    end
      # Returns the number of words in the contents as an integer
  
    def reading_time(wpm)
        fail "WPM must be positive." unless wpm.positive?
        return (count_words / wpm.to_f).ceil
    end
  
    def reading_chunk(wpm, minutes)
        fail "Reading speed must be above zero." unless wpm.positive?no_words_we_can_read = wpm * minutes
        start_from =@furthest_word_read
        end_at =@furthest_word_read + no_of_words_we_can_read
        word_list = words[start from,end_at]
    if  end_at >= count_words
        @furthest_word_read =end_at
    else
        @furthest_word_read = end_at
    end
    return word_list.join(" ")
    end# `wpm` is an integer representing the number
                                    # of words the user can read per minute
                                    # `minutes` is an integer representing the
                                    # number of minutes the user has to read
      # Returns a string with a chunk of the contents that the user could read
      # in the given number of minutes.
      # If called again, `reading_chunk` should return the next chunk, skipping
      # what has already been read, until the contents is fully read.
      # The next call after that it should restart from the beginning.
    

    private
    def words
      return @contents.split(" ")
    end
  end

  