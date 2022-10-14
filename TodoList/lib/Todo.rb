class Todo
    def initialize(title) # task is a string
      @title = title
      @complete = false
    end
  
    def title
      return @title # Returns the task as a string
    end
  
    def mark_done!
      return @complete = true
      # Marks the todo as done
      # Returns nothing
    end
  
    def done?
      return @complete 
      # Returns true if the task is done
      # Otherwise, false
    end

    def give_up!
      return @complete = true
    end
    
  end