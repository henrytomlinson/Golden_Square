require "diary_entry_formatter"

RSpec.describe DiaryEntryFormatter do
    it "formats a diary entry" do
      diary_entry = double :diary_entry,
        title: "FAKE TITLE", contents: "FAKE CONTENTS"  
      diary_entry_formatter = DiaryEntryFormatter.new(diary_entry)
      expect(diary_entry_formatter.format).to eq "FAKE TITLE: FAKE CONTENTS"
    end
  end