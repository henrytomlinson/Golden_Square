 require "diary_entry"

 RSpec.describe DiaryEntry do
    it "constructs diary entries" do
        diary_entry = DiaryEntry.new("my title", "contents")
        expect(diary_entry.title).to eq "my title"
        expect(diary_entry.contents).to eq "contents"
    end
end



