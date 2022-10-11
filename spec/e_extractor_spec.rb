require "e_extractor"

describe "e_extractor" do
    it "if empty string returns same" do
        result = e_extractor("")
        expect(result).to eq ""
    end
    it "takes the letter e from hello and brings to start" do
        result = e_extractor("hello")
        expect(result).to eq "ehllo"
    end
end