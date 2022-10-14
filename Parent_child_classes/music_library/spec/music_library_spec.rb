require "music_library"

RSpec.describe MusicLibrary do
    #context "initially" do
     #   it "is empty" do
      #      music_library = MusicLibrary.new
       #     expect(music_library.all).to eq [] 
        #end
    #end

    #it "it responds with empty list" do
     #   music_library = MusicLibrary.new
      #  expect(music_library.search_by_title("fred")).to eq [] 
    #end
#fake test
    context "when we add a track to the library" do
        it "comes back in the list" do
            music_library = MusicLibrary.new
            track_1 = double :track
            track_2 = double :track
            music_library.add(track_1)
            music_library.add(track_2)
            expect(music_library.all).to eq [track_1, track_2]
        end
    end

        it "searches tracks that match" do
            music_library = MusicLibrary.new
            track_1 = double :track
            expect(track_1).to receive(:matches?).with("two").and_return(true)
            track_2 = double :track
            expect(track_2).to receive(:matches?).with("two").and_return(false)
            music_library.add(track_1)
            music_library.add(track_2)
            expect(music_library.search_by_title("two")).to eq [track_1]
        end

    
end