require "TodoList"

RSpec.describe TodoList do
    context "given no tasks" do
        it "has an empty list" do
            todo_list = TodoList.new
            expect(todo_list.all).to eq []
        end

        it "has an empty list of complete tasks" do
            todo_List = TodoList.new
            expect(todo_List.complete).to eq []
        end
    
    
    
    
    end
end

