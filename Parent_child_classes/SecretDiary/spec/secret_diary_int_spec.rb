require "secret_diary"
require "diary"

RSpec.describe "integration" do
    context "initially" do
        it "does not read the diary because it is locked" do
            diary = double :diary
            secret_diary = SecretDiary.new(diary)
            expect { secret_diary.read }.to raise_error "Go away!"
        end
    end

    context "when unlocked" do
        it "it reads diary contents" do
            diary = double :diary, read: "FAKE CONTENTS!"
            secret_diary = SecretDiary.new(diary)
            secret_diary.unlock
            expect(secret_diary.read).to eq "FAKE CONTENTS!"
        end
    end

    context "when relocked" do
        it "it does not read diary contents" do
            diary = double :diary
            secret_diary = SecretDiary.new(diary)
            secret_diary.unlock
            secret_diary.lock
            expect { secret_diary.read }.to raise_error "Go away!"
        end
    end




end


