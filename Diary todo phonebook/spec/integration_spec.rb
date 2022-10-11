require "diary"
require "diary_entry"
require "diary_reader"
require "phonebook"

RSpec.describe "diary integration" do
    it "adds diary entries to a list" do
        diary = Diary.new
        entry_1 = DiaryEntry.new("title 1", "contents 1")
        entry_2 = DiaryEntry.new("title 2", "contents 2")
        diary.add(entry_1)
        diary.add(entry_2)
        expect(diary.entries). to eq [entry_1, entry_2]
    end

 describe "reading times" do        
    context "check whether there is a diary entry to read in the time" do
        it  "will show the entry" do
            diary = Diary.new
            reader = DiaryReader.new(2, diary)
            entry_1 = DiaryEntry.new("title1", "one")
            entry_2 = DiaryEntry.new("title2", "one two")
            entry_3 = DiaryEntry.new("title3", "one two three")
            entry_4 = DiaryEntry.new("title4", "one two three four")
            entry_5 = DiaryEntry.new("title5", "one two three four five")
            diary.add(entry_1)
            diary.add(entry_2)
            diary.add(entry_3)
            diary.add(entry_4)
            diary.add(entry_5)
            expect(reader.most_readable_in_given_time(2)). to eq entry_5
        end
    end
    context "check whether the best entry is a bit shorter then the best option" do
        it  "will show the entry" do
            diary = Diary.new
            reader = DiaryReader.new(2, diary)
            entry_1 = DiaryEntry.new("title1", "one")
            entry_2 = DiaryEntry.new("title2", "one two")
            entry_3 = DiaryEntry.new("title3", "one two three")
            entry_4 = DiaryEntry.new("title4", "one two three four")
            diary.add(entry_1)
            diary.add(entry_2)
            diary.add(entry_3)
            diary.add(entry_4)
            expect(reader.most_readable_in_given_time(1)). to eq entry_3 
        end
    end
    context "where there is nothing readable in the time" do
        it  "will return nil" do
            diary = Diary.new
            reader = DiaryReader.new(2, diary)
            entry_1 = DiaryEntry.new("title4", "one two three four five")
            diary.add(entry_1)
            expect(reader.most_readable_in_given_time(1)). to eq nil
        end
    end
    context "empty diary" do
        it  "returns nil" do
            diary = Diary.new
            reader = DiaryReader.new(2, diary)
            expect(reader.most_readable_in_given_time(1)). to eq nil 
        end
    end

    context "invalid wpm" do
        it  "fails" do
            diary = Diary.new
            expect{ DiaryReader.new(0, diary) }.to raise_error "WPM must be above 0." 
        end
    end

     describe "phone number extraction" do
        it "takes the phone numbers from the diary" do
            diary = Diary.new
            phone_book = PhoneNumberExtract.new(diary)
            diary.add(DiaryEntry.new("title 1", "one 01253123456"))
            diary.add(DiaryEntry.new("title 2", "three 01253123457"))
            expect(phone_book.extract_numbers).to eq ["01253123456", "01253123457"]
        end
    end

    describe "invalid numbers" do
        it "doesn't extract invalid numbers" do
            diary = Diary.new
            phone_book = PhoneNumberExtract.new(diary)
            diary.add(DiaryEntry.new("title 1", "john 01253123456 0125312345611111"))
            expect(phone_book.extract_numbers).to eq ["01253123456"]
        end
    end


end

end
