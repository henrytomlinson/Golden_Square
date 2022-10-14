class TaskFormatter
    def initialize(task)
        @task = task # task is an instance of Task
    end
  
    def format
        if @task.complete?
            return "[x] #{@task.title}"
        else
            return "[] #{@task.title}"
        end
    end
  end