#require "diary"
#require "diary_entry"

#RSpec.describe "integration" do
 # it "counts the words in all entries" do
  #  diary = Diary.new
   # diary.add(DiaryEntry.new("title1", "one two"))
    #diary.add(DiaryEntry.new("title2", "three four five"))
    #expect(diary.count_words).to eq 5
  #end
#end
require "diary"
# create fake versions of diary entry which will live in our tests below

RSpec.describe Diary do
  it "counts the words in its entries" do
    diary = Diary.new
    diary.add(double(:fake_diary_entry, count_words: 2))
    diary.add(double(:fake_diary_entry, count_words: 3))
    expect(diary.count_words).to eq 5
  end
end

#this is what it would like in isolation but above is it inclued in the rspec.

=begin

RSpec.describe Diary do
  it "counts the words in its entries" do
    diary = Diary.new
    diary.add(FakeTwoWordDiaryEntry.new)
    diary.add(FakeThreeWordDiaryEntry.new)
    expect(diary.count_words).to eq 5
  end
end


class FakeTwoWordDiaryEntry
  def count_words
    return 2
  end
end

class FakeThreeWordDiaryEntry
  def count_words
    return 3
  end
end
=end
