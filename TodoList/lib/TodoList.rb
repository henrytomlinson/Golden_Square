class TodoList
    def initialize
      @todos = []
    end
  
    def add(todo) # todo is an instance of Todo
      @todos << todo # Returns nothing
    end

    def all
      return @todos
    end
  
    def incomplete
      return @todos.reject(&:done?) #return all tasks and reject the complete ones 
      # Returns all non-done todos
    end
  
    def complete
      return @todos.select(&:done?) # Returns all complete todos
    end
  
    def give_up!
      return @todos.mark_done!
        
      # Marks all todos as complete
    end
end
  