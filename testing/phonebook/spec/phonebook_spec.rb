require 'phonebook'

RSpec.describe PhoneBook do
    context "with no entries" do
        it "has an empty list" do
            phone_book = PhoneBook.new
            expect(phone_book.list).to eq []
        end
    end


    context "given an entry with a number only" do
        it "stores the number" do
            phone_book = PhoneBook.new
            phone_book.extract_numbers("123456789")
            expect(phone_book.list).to eq ["123456789"]
        end
    end

    context "given an entry with a number in it" do
        it "stores the number" do
            phone_book = PhoneBook.new
            phone_book.extract_numbers("I was calling 077777778 the other day")
            expect(phone_book.list).to eq ["I was calling 077777778 the other day"]
        end
    end

    context "given an entry with 2 numbers in it" do
        it "stores both numbers" do
            phone_book = PhoneBook.new
            phone_book.extract_numbers("Fave numbers: 077777778, 012345678")
            expect(phone_book.list).to eq ["Fave numbers: 077777778, 012345678I"]
        end
    end

    context "given an entry with no numbers" do
        xit "stores nothing" do
            phone_book = PhoneBook.new
            phone_book.extract_numbers(" ")
            expect(phone_book.list).to eq [" "]
        end
    end

    context "Extract numbers" do
        xit "will shows fave numbers when requested" do
            phone_book = PhoneBook.new
            phone_book.extract_numbers("Fave numbers: 077777778, 012345678")
            expect(phone_book.list).to eq ["Fave numbers: 077777778, 012345678"]
        end
    end

    context "Given two entries with numbers" do
        xit "stores all numbers seen" do
            phone_book = PhoneBook.new
            phone_book.extract_numbers("My friend Barry 0123456711")
            phone_book.extract_numbers("My friend Barry 0123456711")
            expect(phone_book.list).to eq ["0123456711", "0123456711"]
        end
    end

    context "Given two entries with numbers" do
        xit "stores all numbers seen" do
            phone_book = PhoneBook.new
            phone_book.extract_numbers("My friend Barry 0123456711")
            phone_book.extract_numbers("My friend Barry 0123456711")
            expect(phone_book.list).to eq ["0123456711", "0123456711"]
        end
    end

    context "Given entry with too few digits" do
        xit "does not store the number" do
            phone_book = PhoneBook.new
            phone_book.extract_numbers("My friend Barry 123456711")
            expect(phone_book.list).to eq []
        end
    end

    context "Given an entry with duplicates" do
        xit "only stores unique numbers" do
            phone_book = PhoneBook.new
            phone_book.extract_numbers("My friend Barry 0123456711")
            phone_book.extract_numbers("My mate Barry 0123456711")
            expect(phone_book.list).to eq ["0123456711"]
        end
    end
end