require "password_checker"

RSpec.describe PasswordChecker do
    it "checks password length" do 
        password=PasswordChecker.new
        expect(password.check("12345678")).to eq(true)
    end

    it "checks password length" do 
        password=PasswordChecker.new
        expect { password.check("1234567") }.to raise_error "Invalid password, must be 8+ characters."
    end
end
