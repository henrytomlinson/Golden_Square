require "TodoList"
require "Todo"

RSpec.describe "integtration" do
    it "adds tasks and lists them out" do 
        task_list = TodoList.new
        task_1 = Todo.new("Walk the cat")
        task_2 = Todo.new("Walk the dog")
        task_list.add(task_1)
        task_list.add(task_2)
        expect(task_list.incomplete).to eq [task_1, task_2]# tasks 1 and 2 
    end


 
 
# Tasklist completing
    it "when marked complete doesnt show in main task list" do 
        task_list = TodoList.new
        task_1 = Todo.new("Walk the cat")
        task_2 = Todo.new("Walk the dog")
        task_list.add(task_1)
        task_list.add(task_2)
        task_2.mark_done!
        expect(task_list.incomplete).to eq [task_1] # task 1 only 
    end



#3 # Tasklist completing
    it "adds tasks and shows completed list" do 
        task_list = TodoList.new
        task_1 = Todo.new("Walk the cat")
        task_2 = Todo.new("Walk the dog")
        task_list.add(task_1)
        task_list.add(task_2)
        task_2.mark_done!
        expect(task_list.complete).to eq [task_2] # task  2
    end

    it "marks all todos as done" do 
        task_list = TodoList.new
        task_1 = Todo.new("Walk the cat")
        task_2 = Todo.new("Walk the dog")
        task_list.add(task_1)
        task_list.add(task_2)
        task_2.mark_done!
        task_1.give_up!
        expect(task_list.complete).to eq [task_1,task_2] # task  2
    end
end 