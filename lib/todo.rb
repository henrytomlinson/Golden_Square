
class TodoList
    def initialize
        @tasks = []

    def add(task)
        @tasks << task   #push to array
    end

    def complete(task)
        fail "No such task" unless@tasks.include? task
        @tasks.delete(task)
    end

    def list
        return @tasks
end

end