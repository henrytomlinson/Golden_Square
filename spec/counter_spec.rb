require 'counter'

RSpec.describe Counter do
  it "initially reports count of zero" do
   counter =Counter.new
   expect(counter.report).to eq "Counted to 0 so far."
  end 

  it "initially reports count of zero" do
    counter =Counter.new
    counter.add(7)
    expect(counter.report).to eq "Counted to 7 so far."
   end 

   it "initially reports count of zero" do
    counter =Counter.new
    counter.add(8)
    counter.add(9)
    counter.add(12)
    expect(counter.report).to eq "Counted to 29 so far."
   end 
end

   