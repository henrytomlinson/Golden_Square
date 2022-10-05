require 'count_words'

RSpec.describe 'count_words' do
    it 'returns how many words in a string' do
    result = count_words('How are you today')
    expect(result).to eq 4
    end

    it 'returns count 0 of no words provided' do
    result = count_words("")
    expect(result).to eq 0
    end
end
