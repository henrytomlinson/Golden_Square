class TaskList
    def initialize
        @tasks = []
    end
    
    def add(task) # task is an instance of Task  
        @tasks << task
    end
  
    def all 
      return  @tasks# returns a list of Tasks 
    end
      
   def complete
    return @todos.select(&:done?)  # returns list of completed task instances
   end
  end