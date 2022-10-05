require 'check_todo'

RSpec.describe 'check for #TODO in a text' do
    it 'returns true if #TODO is in a string' do
    expect(check_todo("Print report #TODO")).to eq (true)
    end

    it 'returns false if #TODO is not a string' do
        expect(check_todo("Print report #ODO")).to eq (false)
    end

    it 'returns false if empty string' do
        expect(check_todo("")).to eq (false)
    end
    
end

