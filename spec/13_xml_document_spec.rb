# # Topics
#
# * method_missing
# * blocks
# * strings
# * hashes
#
# # Builder
#
# Here we will implement the so-called Builder Pattern: we will make
# an object, XmlDocument, that *builds* an XML file, which can contain
# arbitrary tags.
#
# Stuff you'll learn:
# * method_missing
# * nested closures
# * x"builder pattern"

require "13_xml_document"

describe XmlDocument do
  before do
    @xml = XmlDocument.new
  end

  describe "#hello" do
    it "renders an empty tag" do
      expect(@xml.hello).to eq("<hello/>")
    end

    it "renders a tag with attributes" do
      expect(@xml.hello(:name => "dolly")).to eq('<hello name="dolly"/>')
    end

    it "renders block with text inside" do
      expect(@xml.hello { "dolly" }).to eq("<hello>dolly</hello>")
    end

    it "nests one level" do
      expect(@xml.hello { @xml.goodbye }).to eq("<hello><goodbye/></hello>")
    end
  end

  describe "#send" do
    it "renders a randomly named tag" do
      tag_name = (1..8).map{|i| ("a".."z").to_a[rand(26)]}.join
      expect(@xml.send(tag_name)).to eq("<#{tag_name}/>")
    end
  end

  describe "system" do
    it "nests several levels" do
      xml = XmlDocument.new

      xml_string = xml.hello do
        xml.goodbye do
          xml.come_back do
            xml.ok_fine(:be => "that_way")
          end
        end
      end

      expect(xml_string).to eq('<hello><goodbye><come_back><ok_fine be="that_way"/></come_back></goodbye></hello>')
    end

    it "indents" do
      @xml = XmlDocument.new(true)

      xml_string = @xml.hello do
        @xml.goodbye do
          @xml.come_back do
            @xml.ok_fine(:be => "that_way")
          end
        end
      end

      expect(xml_string).to eq(
        "<hello>\n" +
        "  <goodbye>\n" +
        "    <come_back>\n" +
        "      <ok_fine be=\"that_way\"/>\n" +
        "    </come_back>\n" +
        "  </goodbye>\n" +
        "</hello>\n"
      )
    end
  end
end
