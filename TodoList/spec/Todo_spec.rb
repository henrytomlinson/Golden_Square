require "Todo"

RSpec.describe Todo do
    it "constructs" do
        task = Todo.new("walk the dog")
        expect(task.title).to eq "walk the dog"
    end


    it "is initially not complete" do
        task = Todo.new("walk the dog")
        expect(task.done?).to eq false
    end

    it "is marked as complete" do
        task = Todo.new("walk the dog")
        task.mark_done!
        expect(task.done?).to eq true
    end
end
    
    