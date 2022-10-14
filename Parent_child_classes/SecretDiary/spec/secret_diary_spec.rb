require "secret_diary"

RSpec.describe SecretDiary do
    context "initially" do
        it "does not read because it is locked" do
            diary = Diary.new("MY CONTENTS")
            secret_diary = SecretDiary.new(diary)
            secret_diary.lock
            expect { secret_diary.read }.to raise_error "Go away!"
        end
    end

    context "when unlocked" do
        it "reads the contents" do
            diary = Diary.new("MY CONTENTS")
            secret_diary = SecretDiary.new(diary)
            secret_diary.unlock
            expect(secret_diary.read).to eq "MY CONTENTS"
        end
    end

    context "when relocked" do
        it "does not read the contents" do
            diary = Diary.new("MY CONTENTS")
            secret_diary = SecretDiary.new(diary)
            secret_diary.unlock
            secret_diary.lock
            expect { secret_diary.read }.to raise_error "Go away!"
        end
    end
end


