# Learn Ruby Test-First

## Ruby Setup

If you've already set up ruby on your own machine, you may skip this step. Otherwise, please see the [advanced setup instructions][setup] document.

[setup]: http://prepwork.appacademy.io/coding-test-1/setup

## Setting up the Project

You can download a .zip version of this repository by clicking the "Clone or Download" button in the top right on GitHub. Open the directory in your favorite text editor (we recommend [Atom][atom]) and run your commands at the command line.

[atom]: https://atom.io/

## Using These Exercises

Each exercise has its own spec file in the `spec` directory. Open the
spec file to read the directions. Each exercise will have you modify a corresponding file in the `lib`
directory.

To run the specs, you'll need to install RSpec. First, run `gem install bundler` in the root directory of your project. Then, run `bundle install`. To run a single spec file, run a command like this: `bundle exec rspec spec/00_hello_spec.rb`. To run all of the specs at once, run `bundle exec rspec`.

**What's happening here?** 
In the root directory of the project, you'll see a file called "Gemfile". This is a manifest of all of the Ruby gems needed to make your project work. `bundle install` is a command you'll use often to install all of the gems you need to run a program. `gem install bundler` installs the bundler gem, which is what makes `bundle install` work. `bundle exec rspec` simply tells your machine to run the version of RSpec specified in the Gemfile.

# Resources

Here is a broad survey of many resources you may find useful. Don't
try to read them all! Just browse around when you feel like learning
more about Ruby.

## Learning Ruby via Tests (and/or Interactively)

* [Ruby Koans](http://rubykoans.com) by Jim Weirich and Joe O'Brien
  (inspired by [Metakoans](http://rubyquiz.com/quiz67.html) by
  ara.t.howard and
  [Ruby Learning Tests](http://clarkware.com/cgi/blosxom/2005/03/18)
  by Mike Clark)
* [Test-First Teaching](http://testfirst.org) by Sarah Allen and Alex
  Chaffee
  * [Learning TDD Through Test First Teaching](http://www.youtube.com/watch?v=KgfdlZuVz7I) talk by Sarah Allen at East Bay Ruby Meetup
* [Growing OO Software In Ruby](http://www.exampler.com/blog/2009/12/17/growing-object-oriented-software-in-ruby/) by Brian Marick - a Ruby version of [Growing Object-Oriented Software Guided by Tests](http://www.growing-object-oriented-software.com/)
* [ruby-warrior](http://github.com/ryanb/ruby-warrior) by Ryan Bates -
  a game written in Ruby for learning Ruby
* [Ruby Kickstart](https://github.com/JoshCheek/ruby-kickstart) by
  Josh Cheek - another set of test-driven exercises
* [Try Ruby](http://tryruby.org) runs a Ruby interpreter in your
  browser, with hints and advice

## Learning Ruby and Programming

* [Learn To Program](http://pine.fm/LearnToProgram/) by **Chris
  Pine** - great Ruby tutorial, available online (1st ed.) or in a
  [PragProg book](http://www.pragprog.com/titles/ltp2/learn-to-program-2nd-edition)
  (2nd ed.)
* [Ruby Learning](http://rubylearning.com/satishtalim/tutorial.html) -
  Ruby tutorial
* [Rails for Zombies](http://railsforzombies.org) - learn Ruby and
  Rails in your browser, no setup required
* [Learn Ruby The Hard Way](http://ruby.learncodethehardway.org/) - a
  Ruby translation of Zed Shaw's "Learn Python The Hard Way"
* [Read Ruby](http://ruby.runpaint.org/) a book about Ruby, quite
  technical but well written. Free online.
* [Ruby Mission](http://github.com/alexch/mission)
* [RailsBridge](http://groups.google.com/group/railsbridge)
* [CS Unplugged](http://www.csunplugged.org/) - "CS Unplugged provides
  an extensive collection of free resources that teach principles of
  Computer Science such as binary numbers, algorithms and data
  compression through engaging games and puzzles that use cards,
  string, crayons and lots of running around."
* [Everyday Scripting with Ruby](http://pragprog.com/titles/bmsft/everyday-scripting-with-ruby) by Brian Marick
* [Programming Ruby (the Pick Axe)](http://pragprog.com/titles/ruby/programming-ruby) by Dave Thomas
* Nice User's Guide: <http://www.rubyist.net/~slagell/ruby/>
* Michael Hartl's [Rails Tutorial](http://railstutorial.org)
* <http://ruby4kids.com>
* [Ruby in 100 Minutes](http://jumpstartlab.com/resources/ruby-jumpstart/ruby/) by [Jeff Casimir](http://jumpstartlab.com)
* [Ruby Mendicant University](http://university.rubymendicant.com)
* Trainer on Rails ["Ruby For Rails" tutorial](http://www.public.traineronrails.com/courses/ruby/)
* ["My 10 Favorite Things About Ruby"](http://yehudakatz.com/2009/08/24/my-10-favorite-things-about-the-ruby-language/) by Yehuda Katz
* ["How To Count"](http://stevenf.com/pages/book.html) by Steven
  Frank, vol. 1 in "Programming for Mere Mortals", a series of books
  designed to introduce the concepts of programming from the ground up
  to a reader who has never written a line of code.

## Online Ruby References

* <http://www.ruby-lang.org>
* <http://www.ruby-doc.org/>
* <http://www.gotapi.com/rubyrails>
* <http://apidock.com/>

## Other good resources

* `irb` - when in doubt, try it out!
* <http://www.rubular.com/> - an online Ruby regular expression
  calculator

# Credits

* Concept by Alex Chaffee
* Exercises by Alex Chaffee, Sarah Allen, Liah Hansen, Kai Middleton
* Early quality assurance by Sumiki, Dimitri, Liah, Michael, and Brendan
