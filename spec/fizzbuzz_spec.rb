require "fizzbuzz"

RSpec.describe "fizzbuzz method" do
    it "for an ordinary number it returns the number" do
        result = fizzbuzz(7)
        expect(result).to eq 7
    end
    it "for 15 returns fizz" do
        result = fizzbuzz(15)
        expect(result).to eq "fizz"
    end
end


