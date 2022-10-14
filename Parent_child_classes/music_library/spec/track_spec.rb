require "track"

RSpec.describe Track do

    it "matches when given a keyword in the title" do
        track = Track.new("one MATCHES two", "three four")
        expect(track.matches?("MATCHES")).to eq true
    end

    it "matches when given a keyword in the artist" do
        track = Track.new("one two", "three MATCHES four")
        expect(track.matches?("MATCHES")).to eq true
    end

    it "it does not match when keyword is not present in either" do
        track = Track.new("one two", "three four")
        expect(track.matches?("MATCHES")).to eq false
    end
end


=begin
    it "constructs" do
        track = Track.new("my_title", "my_artist")
        expect(track.title).to eq "my_title"
        expect(track.artist).to eq "my_artist"
    end

    describe "#format" do
        it "formats title and artist into a single string" do
            track=Track.new("my_title", "my_artist")
            expect(track.format).to eq "my_title by my_artist"
        end
    end
end

=end
