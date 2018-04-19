# # Hello!
#
# This lab teaches basic Ruby function syntax.
#
# ## Run the test
#
# bundle exec rspec spec/00_hello_spec.rb
#
# ## Watch it fail
#
# You should see an error. **Don't get scared!** Try to read it and
# figure out what the computer wants to tell you. Somewhere on the
# first line it should say something like
#
#     the hello function
#       says hello (FAILED - 1)
#
#     Failures:
#
#       1) the hello function says hello
#          Failure/Error: hello.should == "Hello!"
#          NameError:
#            undefined local variable or method `hello' for #<RSpec::Core::ExampleGroup::Nested_1:0x000001009b8808>
#          # ./hello/hello_spec.rb:5:in `block (2 levels) in <top (required)>'
#
# ## Create the hello function
#
# Fix this by opening `lib/00_hello.rb` and creating an empty function:
#
#     def hello
#     end
#
# Save it. Run the test again.
#
# ## Watch it fail
#
# Now you should see an error like this:
#
#     the hello function
#       says hello (FAILED - 1)
#
#     Failures:
#
#       1) the hello function says hello
#          Failure/Error: hello().should == "Hello!"
#            expected: "Hello!"
#                 got: nil (using ==)
#          # ./hello/hello_spec.rb:5:in `block (2 levels) in <top (required)>'
#
# This means that while it found the file, and it found the function,
# it's not returning anything! ("nil" is the Ruby way of saying "not
# anything".)
#
# ## Make it return something
#
# Inside the "hello" function, put a single line containing a string
# that is *not* "Hello!". (Here we are simulating you making an honest
# mistake, so we can see what the error message looks like.)
#
#     def hello
#       "whuh?"
#     end
#
# Save it. Run the test again.
#
# ## Watch it fail
#
# Now you should see an error like this:
#
#     1) the hello function says hello
#        Failure/Error: hello().should == "Hello!"
#          expected: "Hello!"
#               got: "whuh?" (using ==)
#        # ./hello/hello_spec.rb:5:in `block (2 levels) in <top (required)>'
#
# Correct this by changing "whuh?" to "Hello!". Save it. Run the test again.
#
# ## Watch it pass!
#
# Hooray! Finally! It works!
#
# ## Give yourself a high five
#
# Also, sing a song and do a little dance.
#
# ## And then...
#
# Fix the next failure! `:-)`
#
#     the hello function
#       says hello
#
#     the greet function
#       says hello to someone (FAILED - 1)
#
# In order to get the next test to pass, your function will need to
# accept an *argument*.
#
#     def greet(who)
#       "Hello, #{who}!"
#     end

require "00_hello"

describe "Hello" do
  describe "#hello" do
    it "says hello" do
      expect(hello).to eq("Hello!")
    end
  end

  describe "#greet" do
    it "says hello to someone" do
      expect(greet("Alice")).to eq("Hello, Alice!")
    end

    it "says hello to someone else" do
      expect(greet("Bob")).to eq("Hello, Bob!")
    end
  end
end
