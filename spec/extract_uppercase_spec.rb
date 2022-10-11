require "extract_uppercase"

RSpec.describe "extract_uppercase" do
    it "return empty list if given empty list" do
        result = extract_uppercase("")
        expect(result).to eq []

    end

    it "return empty list if given no caps" do
        result = extract_uppercase("hello world")
        expect(result).to eq []

    end

    it "return caps list if given caps" do
        result = extract_uppercase("Hello World")
        expect(result).to eq []
    end

    it "return caps list if given caps" do
        result = extract_uppercase("HELLO world")
        expect(result).to eq ["HELLO"]
    end

end