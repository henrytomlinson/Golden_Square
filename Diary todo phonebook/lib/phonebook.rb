class PhoneNumberExtract
    def initialize(diary)
        @diary = diary
    end
  
    def extract_numbers #returns a list of phone numbers from the diary
      return @diary.entries.flat_map do |entry|
          extract_numbers_from_entry(entry) 
      end.uniq
    end


    private_methods

    def extract_numbers_from_entry(entry)
        return entry.contents.scan(/01[0-9]{9}/)
    end
end