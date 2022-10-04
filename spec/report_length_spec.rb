require "report_length"

RSpec.describe "length method" do
    it "states how long the string is" do
      result = report_length("Henry")
      expect(result).to eq "This string was 5 characters long."
    end
  end