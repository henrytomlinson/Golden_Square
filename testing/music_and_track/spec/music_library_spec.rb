require "music_library"

RSpec.describe MusicLibrary do
    context "initially" do
        it "is empty" do
            music_library = MusicLibrary.new
            expect(music_library.all).to eq [] 
        end
    end

    it "it responds with empty list" do
        music_library = MusicLibrary.new
        expect(music_library.search_by_title("fred")).to eq [] 
    end
end