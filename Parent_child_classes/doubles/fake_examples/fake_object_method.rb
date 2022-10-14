An Object

# As a class
class FakeObject

end

fake_object = FakeObject.new

# As a double
RSpec.describe "example" do
  it "example" do
    fake_object = double(:fake_object)
  end
end


#as a class
class FakeObject
    def greet
      return "Hello, world!"
    end
  end


  fake_object = FakeObject.new
fake_object.greet # => "Hello, world!"

# As a double
RSpec.describe "example" do
  it "example" do
    # This creates the double
    fake_object = double(:fake_object, greet: "Hello, world!")

    # This is just to show you what it can now do
    expect(fake_object.greet).to eq "Hello, world!"
  end
end

o Make Methods Only Return Values With Given Arguments

# As a class
class FakeObject
  def greet(name)
    fail unless name == "Kay"
    return "Hello, Kay!"
  end
end

fake_object = FakeObject.new
fake_object.greet("Kay") # => "Hello, Kay!"
fake_object.greet("Henry") # Raises an error

# As a double
RSpec.describe "example" do
  it "example" do
    # This creates the double
    fake_object = double(:fake_object)
    # This creates a 'stub' (fake method) on the double
    allow(fake_object).to receive(:greet).with("Kay").and_return("Hello, Kay!")

    # This is just to show you what it can now do
    expect(fake_object.greet("Kay")).to eq "Hello, Kay!"
    fake_object.greet("Henry") # This will throw an error
  end
end


To Verify Methods Are Called With Given Arguments

# As a class
class FakeObject
    def initialize
      @greet_has_been_called = false
    end
  
    def greet(name)
      fail unless name == "Kay"
      @greet_has_been_called = true
      return "Hello, Kay!"
    end
  
    def has_greet_been_called
      return @greet_has_been_called
    end
  end
  
  fake_object = FakeObject.new
  fake_object.has_greet_been_called # => false
  fake_object.greet("Kay") # => "Hello, Kay!"
  fake_object.has_greet_been_called # => true
  fake_object.greet("Henry") # Raises an error
  
  
  # As a double
  RSpec.describe "example" do
    it "example" do
      # This creates the double
      fake_object = double(:fake_object)
      # This creates a 'stub' (fake method) on the double
      # But using 'expect' means the test will fail unless it is called.
      expect(fake_object).to receive(:greet).with("Kay").and_return("Hello, Kay!")
  
      # This is just to show you what it can now do
      expect(fake_object.greet("Kay")).to eq "Hello, Kay!"
      fake_object.greet("Henry") # This will throw an error
      # If you comment out the above two lines, the test will fail.
    end
  end

  RSpec.describe "doubles" do
    # Change `xit` to `it` one by one as you work through.
  
    xit "sets up a blank double" do
      # Set up your doubles here
      fake_object = double :blank
  
      # Don't edit below
      expect(fake_object).to be
    end
  
    xit "sets up a double with methods" do
      # Set up your doubles here
      fake_object = double :cat, speak: "Meow", count_ears: 2, count_legs: 4
      #another option-
      #allow(fake_object). to receive(:speak). and_return(("Meow")
      #allow(fake_object). to receive(:count_ears). and_return((2)
      #allow(fake_object). to receive(:count_legs). and_return((4)


  
      # Don't edit below
      expect(fake_object.speak).to eq "Meow"
      expect(fake_object.count_ears).to eq 2
      expect(fake_object.count_legs).to eq 4
    end
  
    it "sets up a double with methods that take arguments" do
      # Set up your doubles here
      fake_object = double :cat
      allow(fake_object). to receive(:speak).with("Jess") and_return("Meow", "Jess")

  
      # Don't edit below
      expect(fake_object.speak("Jess")).to eq "Meow, Jess"
      # Don't stub this next one
      # It's just to verify you've set up the double correctly
      expect { fake_object.speak("Ron") }.to raise_error RSpec::Mocks::MockExpectationError
    end
  
    it "sets up doubles that expect to be called" do
      fake_object = double :animal
      # Write an expectation below that the method "speak" is called with
      # the argument "Steve"
      expect(fake_object.to receive("speak")).with("Steve")
  
      # ...
  
      # Don't edit below
      fake_object.speak("Steve")
    end
  
    xit "creates a double for a specific case" do
      fake_diary = double :diary, add: nil
      # Set up this double to pass the tests below
      # ...
       allow(fake_diary).to receive(:count_entries).and_return 2


      # Don't edit below
      fake_diary.add(double :diary_entry)
      fake_diary.add(double :diary_entry)
      expect(fake_diary.count_entries).to eq 2
    end
  end
  

