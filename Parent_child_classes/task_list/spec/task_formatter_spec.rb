require "task_formatter"

RSpec.describe TaskFormatter do
    it "returns [x] complete as a string" do
        task = Task.new("Walk the dog")
        task_formatter = TaskFormatter.new(task)
        task.mark_complete
        expect(task_formatter.format).to eq "[x] Walk the dog"
    end

    it "returns [] complete as a string" do
        task = Task.new("Walk the dog")
        task_formatter = TaskFormatter.new(task)
        expect(task_formatter.format).to eq "[] Walk the dog"
    end
end
=begin
    it "returns [] complete as a string" do
        task = Task.new("Walk the dog")
        task_formatter = double: TaskFormatter, 
        expect(task_formatter.format).to eq "[] Walk the dog"
    end
end
=end





