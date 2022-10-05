class StringBuilder
    def initialize
      @str = ""
    end
  
    def add(str)
      @str += str
    end
  
    def size
      return @str.length
    end
  
    def output
      return @str
    end
  end
  
  #puts string=StringBuilder.new
  #puts string.add("Henry")
  #puts string.size
  #puts string.output
  #puts string.add("John")
  #puts string.size
  #puts string.output
