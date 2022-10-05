class Present
    def wrap(contents)
      fail "A contents has already been wrapped." unless @contents.nil?
      @contents = contents
    end
  
    def unwrap
      fail "No contents have been wrapped." if @contents.nil?
      return @contents
    end
  end

  #puts presents=Present.new()
  #puts presents.wrap(6)
  #puts presents.unwrap
