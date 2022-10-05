require "reminder"

RSpec.describe Reminder do
    it "remind user to perform a task" do
    reminder = Reminder.new("Henry")
    reminder.remind_me_to("walk dog")
    result = reminder.remind()
    expect(result).to eq "walk dog, Henry!"
    end
    
    it "remind user to perform a task" do
        reminder = Reminder.new("John")
        reminder.remind_me_to("walk dog")
        result = reminder.remind()
        expect(result).to eq "walk dog, John!"
        end

        context "when no task is set" do
            it "fails" do
              reminder = Reminder.new("Kay")
              expect { reminder.remind() }.to raise_error "No reminder set!"
            end
          end
end

