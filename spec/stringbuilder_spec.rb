require "stringbuilder"

RSpec.describe StringBuilder do
    it "initialy returns an empty string" do 
    string_builder = StringBuilder.new
    expect(string_builder.output).to eq ""
    end

    it "returns a string" do 
        string_builder = StringBuilder.new
        string_builder.add("Henry")
        expect(string_builder.output).to eq "Henry"
        end

        it "has size of string" do 
            string_builder = StringBuilder.new
            string_builder.add("Henry")
            expect(string_builder.size).to eq 5
            end

        context "given many strings" do 
            it "returns many strings" do 
                string_builder = StringBuilder.new
                string_builder.add("Henry")
                string_builder.add("John")
                expect(string_builder.output).to eq "HenryJohn"
                end
            end
            


end
