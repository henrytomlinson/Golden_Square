class GrammarStats
    def initialize
        @text_passed =[] # an array to store the passed texts
        @checked_tests =[] # an array to store the checked tests
      # ...
    end
  
    def check(text) # text is a string
      fail "no text given" if text.empty?
      @checked_tests << text # puts the texts into the array
      if starts_with_capital(text) && ends_with_punctuation(text) #pulled from methods below
        @text_passed << text # puts the passed text into the text passed array
          return true
        else
          return false
        end
    end


    
        # Returns true or false depending on whether the text begins with a capital

      # letter and ends with a sentence-ending punctuation mark.
    



  
    def percentage_good # Returns as an integer the percentage of texts checked so far that passed
      fail "no text checked" if @checked_tests.empty?
        percentage = (@text_passed.length)/(@checked_tests.length).to_f 
        return (percentage * 100).floor
    end

      # the check defined in the `check` method. The number 55 represents 55%.
    #end
  private
    def starts_with_capital(text)
      return text[0] != text[0].downcase
    end
    
    
    def ends_with_punctuation(text)
      return (text[-1] =~ /[!?.]/)
    end
end
p text=GrammarStats.new
p text.check("Hello.")
p text.percentage_good