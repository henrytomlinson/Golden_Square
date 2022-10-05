class Gratitudes
    def initialize
      @gratitudes = []
    end
  
    def add(gratitude)
      @gratitudes.push(gratitude)
    end
  
    def format
      formatted = "Be grateful for: "
      formatted += @gratitudes.join(", ")
    end

    context "When no task is set" do it "fails" do 
        reminder = Reminder.new("Kay")
        expect {reminder.remind() }.to raise_error "No reminder set!"
    end
end
  end

  #puts gratitude=Gratitudes.new
  #puts gratitude.add("good")
  #puts gratitude.format
  #puts gratitude.format
