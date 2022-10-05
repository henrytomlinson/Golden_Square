require "gratitudes"

RSpec.describe Gratitudes do
    it "asks for a gratitude" do 
    gratitudes = Gratitudes.new
    gratitudes.add("Good")
    expect(gratitudes.format).to eq "Be grateful for: Good"
    end

    it "asks for another gratitude" do 
        gratitudes = Gratitudes.new
        gratitudes.add("Good")
        gratitudes.add("Health")
        expect(gratitudes.format).to eq "Be grateful for: Good, Health"
        end
            
end

    