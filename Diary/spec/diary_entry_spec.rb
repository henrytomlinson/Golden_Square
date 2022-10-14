require 'diary_entry'

RSpec.describe DiaryEntry  do

    it "constructs" do
        diary_entry = DiaryEntry.new("my_title", "my_contents")
        expect(diary_entry.title).to eq "my_title"
        expect(diary_entry.contents).to eq "my_contents"
    end

    describe "#count_words" do
        it "it returns zero if contents is empty" do
            diary_entry = DiaryEntry.new("my_title", "")
            expect(diary_entry.count_words).to eq 0
        end
    end

    describe "#count_words" do
        it "returns one if the number of words in the contents is one" do
            diary_entry = DiaryEntry.new("my_title", "some")
            expect(diary_entry.count_words).to eq 1
        end
    end

    describe "#count_words" do
        it "returns the number of words in the contents" do
            diary_entry = DiaryEntry.new("my_title", "some contents here")
            expect(diary_entry.count_words).to eq 3
        end
    end

    describe "reading time" do
        it "fails if the wpm is zero" do
            diary_entry = DiaryEntry.new("my_title", "Hello world")
            expect { diary_entry.reading_time(0) }.to raise_error "WPM must be positive."
        end
    end

        it "gives a reading time for the contents" do
            diary_entry = DiaryEntry.new("my_title", "one two three four five")
            expect(diary_entry.reading_time(2)).to eq 3
        end

        it "returns zero reading time if the contents sero" do
            diary_entry = DiaryEntry.new("my_title", "")
            expect(diary_entry.reading_time(2)).to eq 0
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

end




