require 'playlist'

RSpec.describe Playlist  do
    context "given no songs" do
        it "has an empty list" do
            song= Playlist.new
            expect(song.play_list).to eq []
        end
    end
    
    context "empty string" do
        it "fails" do
          song = Playlist.new
          expect { song.add("") }.to raise_error "no song given"
        end
    end

    context "given an entry with a new song" do
        it "stores the song" do
            song = Playlist.new
            song.add("happy")
            expect(song.play_list).to eq ["happy"]
        end
    end

    context "given an entry with a new song" do
        it "stores the song" do
            song = Playlist.new
            song.add("happy")
            song.add("yesterday")
            expect(song.play_list).to eq ["happy", "yesterday"]
        end
    end

    context "see played songs" do
        it "displays the songs listened too" do
            song = Playlist.new
            song.add("happy")
            song.add("yesterday")
            expect(song.play_list).to eq ["happy", "yesterday"]
        end
    end
    
end