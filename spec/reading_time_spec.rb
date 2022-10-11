require "reading_time"

RSpec.describe "reading_time" do
    context "given an empty string" do 
        it "returns zero" do
            result = reading_time("")
            expect(result).to eq 0
        end
    end

    context "given under 200 words" do 
        it "returns one" do
            result = reading_time("one two")
            expect(result).to eq 1
        end
    end

    context "given over 200 words" do 
        it "returns 2" do
            result = reading_time("one " * 400)
            expect(result).to eq 2
        end
    end
end
