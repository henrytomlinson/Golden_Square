require "todo"

RSpec.describe TodoList do
    context "given no tasks" do
        it "has an empty list" do
            todo_List = TodoList.new
            expect(todo_List.list).to eq []
        end
    end
    
    context "given a task" do
        it "has the task in the list" do
            todo_List = TodoList.new
            todo_List.add("Wash the car")
            expect(todo_List.list).to eq ["Wash the car"]
        end
    end
    
    context "given two task" do
        it "has the task in the list" do
            todo_List = TodoList.new
            todo_List.add("Wash the car")
            todo_List.add("Wash the dog")
            expect(todo_List.list).to eq ["Wash the car", "Wash the dog"]
        end
    end

    context "given complete a task" do
        it "removes task from list" do
            todo_List = TodoList.new
            todo_List.add("Wash the car")
            todo_List.add("Wash the dog")
            todo_List.complete("Wash the car")
            expect(todo_List.list).to eq ["Wash the dog"]
        end
    end

    context "given non-exitent task" do
        it "fails" do
            todo_ List = TodoList.new
            todo_List.add("Wash the car")
            todo_List.add("Wash the dog")
            expect { todo_List.complete("Wash the sheep") }.to raise_error "No such task"
        end
    end  
end
