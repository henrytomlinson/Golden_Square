require 'greet'

RSpec.describe "greet method" do
    it "greets with name" do
      result = greet("Henry")
      expect(result).to eq "Hello, Henry!"
    end
  end