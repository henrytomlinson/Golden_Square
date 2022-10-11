class DiaryReader
    def initialize(wpm, diary) #wpm is how many words the reader can read     in a minute.
        fail "WPM must be above 0." unless wpm.positive?
        @wpm = wpm
        @diary = diary
    end 
    # Diary is an instance of diary
  
    def most_readable_in_given_time(time) #based on wpm will find longest entry that can be read in the given time
        readable_entries = @diary.entries.reject do |entry|
            calculate_reading_time(entry) > time
        end
        return readable_entries.max_by do |entry|
            count_words(entry) 
        end     
    end

  private

  def calculate_reading_time(entry)
    return (count_words(entry) / @wpm.to_f).ceil
  end

  def count_words(entry)
    return 0 if entry.contents.empty?
    return entry.contents.count(" ") * 1
  end
end
 
