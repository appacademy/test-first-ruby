# # Topics
#
# * Hash
# * Array
# * instance variables
# * regular expressions

require '11_dictionary'

describe Dictionary do
  before do
    @d = Dictionary.new
  end

  describe "#entries" do
    it "is empty when created" do
      expect(@d.entries).to eq({})
    end
  end

  describe "#add" do
    it "can add whole entries with keyword and definition" do
      @d.add("fish" => "aquatic animal")
      expect(@d.entries).to eq({"fish" => "aquatic animal"})
      expect(@d.keywords).to eq(["fish"])
    end

    it "add keywords (without definition)" do
      @d.add("fish")
      expect(@d.entries).to eq({"fish" => nil})
      expect(@d.keywords).to eq(["fish"])
    end
  end

  describe "#include" do
    it "can check whether a given keyword exists" do
      expect(@d.include?("fish")).to be_falsey
    end

    it "doesn't cheat when checking whether a given keyword exists" do
      expect(@d.include?("fish")).to be_falsey # if the method is empty, this test passes with nil returned
      @d.add("fish")
      expect(@d.include?("fish")).to be_truthy # confirms that it actually checks
      expect(@d.include?("bird")).to be_falsey # confirms not always returning true after add
    end

    it "doesn't include a prefix that wasn't added as a word in and of itself" do
      @d.add("fish")
      expect(@d.include?("fi")).to be_falsey
    end
  end

  describe "#find" do
    it "doesn't find a word in empty dictionary" do
      expect(@d.find("fi")).to be_empty # {}
    end

    it "finds nothing if the prefix matches nothing" do
      @d.add("fiend")
      @d.add("great")
      expect(@d.find("nothing")).to be_empty
    end

    it "finds an entry" do
      @d.add("fish" => "aquatic animal")
      expect(@d.find("fish")).to eq({"fish" => "aquatic animal"})
    end

    it "finds multiple matches from a prefix and returns the entire entry (keyword + definition)" do
      @d.add("fish" => "aquatic animal")
      @d.add("fiend" => "wicked person")
      @d.add("great" => "remarkable")
      expect(@d.find("fi")).to eq({"fish" => "aquatic animal", "fiend" => "wicked person"})
    end
  end

  describe "#keywords" do
    it "lists keywords alphabetically" do
      @d.add("zebra" => "African land animal with stripes")
      @d.add("fish" => "aquatic animal")
      @d.add("apple" => "fruit")
      expect(@d.keywords).to eq(%w(apple fish zebra))
    end
  end

  describe "#printable" do
    it "can produce printable output like so: [keyword] 'definition'" do
      @d.add("zebra" => "African land animal with stripes")
      @d.add("fish" => "aquatic animal")
      @d.add("apple" => "fruit")
      expect(@d.printable).to eq(%Q{[apple] "fruit"\n[fish] "aquatic animal"\n[zebra] "African land animal with stripes"})
    end
  end
end
