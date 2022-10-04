require 'check_codeword'

RSpec.describe "checking codeword correct" do
    it "check matches codeword " do
      result = check_codeword("horse")
      expect(result).to eq "Correct! Come in."
    end
  end

RSpec.describe "first and last characters" do
    it "first character h and last e " do
      result = check_codeword("hope")
      expect(result).to eq "Close, but nope."
    end
  end

RSpec.describe "if codeword wrong" do
    it "displays if wrong" do
      result = check_codeword("winter")
      expect(result).to eq "WRONG!"
    end
  end

