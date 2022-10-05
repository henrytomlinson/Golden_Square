require "grammar_stats"

RSpec.describe  GrammarStats do

    context "empty string" do
        it "fails" do
          string = GrammarStats.new
          expect { string.check("") }.to raise_error "no text given"
        end
      end

    it "returns true if string starts with capital and ends with a punctation" do
        string = GrammarStats.new
        expect(string.check("Hello I'm Henry.")).to eq true
    end

    it "returns false if string starts with capital and doesnt end with a punctation" do
        string=GrammarStats.new
        expect(string.check("Hello I'm Henry")).to eq false
    end

    it "returns false if string starts with doesn't start with capital and ends with a punctation" do
        string=GrammarStats.new
        expect(string.check("hello I'm Henry.")).to eq false
    end


    it "returns 66 for 3 strings" do
        string=GrammarStats.new
        string.check("hello I'm Larry.")
        string.check("Hello I'm Larry.")
        string.check("Hello I'm Henry.")
        expect(string.percentage_good).to eq 66

    end

end



    
