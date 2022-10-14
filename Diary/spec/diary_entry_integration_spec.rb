require 'diary_entry'
require 'diary'

RSpec.describe "integration"  do
    context "after adding some entries" do 
        it "lists out the entries" do
            diary = Diary.new
            diary_entry_1 = DiaryEntry.new("my title", "my contents")
            diary_entry_2 = DiaryEntry.new("my title 2", "my contents 2")
            diary.add(diary_entry_1)
            diary.add(diary_entry_2)
            expect(diary.all).to eq [diary_entry_1, diary_entry_2]
        end
    end
end


    describe "#count_words" do
        it "returns the number of words in all diary        entries" do
            diary = Diary.new
            diary_entry_1 = DiaryEntry.new("my title", "my contents")
            diary_entry_2 = DiaryEntry.new("my title 2", "my contents 2")
            diary.add(diary_entry_1)
            diary.add(diary_entry_2)
            expect(diary.count_words).to eq 5
        end
    end

    describe "#reading times" do
        context "wpm" do
            it "gives wpm" do
                diary_entry = DiaryEntry.new("my_title", "one " * 550)
                expect(diary_entry.reading_time(200)).to eq 3
            end
        end
    end
    describe "number of words" do
        context "numbers" do
            it "returns the number of words in all diary entries" do
                diary = Diary.new
                diary_entry_1 = DiaryEntry.new("my title", "my contents")
                diary_entry_2 = DiaryEntry.new("my title 2", "my contents 2")
                diary.add(diary_entry_1)
                diary.add(diary_entry_2)
                expect(diary.reading_time(2)).to eq 3
            end
        end
            it "calculates the reading time for all entries where it falls over a minute" do
                diary = Diary.new
                diary_entry_1 = DiaryEntry.new("my title", "my contents")
                diary_entry_2 = DiaryEntry.new("my title 2", "my contents 2")
                diary.add(diary_entry_1)
                diary.add(diary_entry_2)
                expect(diary.reading_time(2)).to eq 3
            end

        it "fails where wpm is zero" do
            diary = Diary.new
            diary_entry_1 = DiaryEntry.new("my title", "my contents1")
            diary.add(diary_entry_1)
            expect { diary.reading_time(0) }.to raise_error("WPM must be positive.")
        end
    end

    describe "best reading time entry behaviour" do
        context "where we have just one entry and it is readable in the time" do
            it "returns that entry" do
                diary = Diary.new
                diary_entry_1 = DiaryEntry.new("my title", "my contents")
                diary.add(diary_entry_1)
                result = diary.find_best_entry_for_reading_time(2, 1)
                expect(result).to eq diary_entry_1
            end
        end
    end

        context "where we have just one entry and it is unreadable in the time" do
            it "returns nil" do
                diary = Diary.new
                diary_entry_1 = DiaryEntry.new("my title", "my contents longer")
                diary.add(diary_entry_1)
                result = diary.find_best_entry_for_reading_time(2, 1)
                expect(result).to eq nil
            end
        end
    context "multiple entries" do 
        it "where we have multiple entries" do
            diary = Diary.new
            best_entry = DiaryEntry.new("my title", "one two")
            diary.add(DiaryEntry.new("my title", "one"))
            diary.add(best_entry)
            diary.add(DiaryEntry.new("my title", "one two three"))
            diary.add(DiaryEntry.new("my title", "my contents four"))
            result = diary.find_best_entry_for_reading_time(2, 1)
            expect(result).to eq best_entry 
        end
    end








        #context "given a wpm of 0" do
         #   it "fails" do
          #      diary_entry = DiaryEntry.new(0)
           #     expect{ diary_entry.reading_time(0) }.to raise_error "Reading speed must be above zero"
            #end
        #end

        #describe "reading_chunk" do
         #   context "contents readable within given minutes" do
          #      it "returns full contents" do
           #         diary_entry = DiaryEntry.new("my_title", "one two three ")
            #        chunk = diary_entry.reading_chunk(200, 1)
             #       expect(chunk).to eq "one two three"
              #  end
            #end
        #end

    #context "contents unreadable within given minutes" do
     #   it "returns a readable chunk" do
      #      diary_entry = DiaryEntry.new("my_title", "one two three ")
       #     chunk = diary_entry.reading_chunk(2, 1)
        #    expect(chunk).to eq "one two"
        #end
    #end

    #context "contents unreadable within given minutes" do
        #it "returns a readable chunk" do
           # diary_entry = DiaryEntry.new("my_title", "one two three ")
           # chunk = diary_entry.reading_chunk(2, 1)
           # expect(chunk).to eq "one two"
        #end
    #end
