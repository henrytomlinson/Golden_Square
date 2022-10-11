class PhoneBook
    def initializer
        @numbers = []
    end

    def extract_numbers(text)
        text.scan(/[0-9]{11}/).each do |number|
        @numbers << number
    end
        #@numbers = @numbers.uniq!
    #end

    def list
        return []
    end

end




