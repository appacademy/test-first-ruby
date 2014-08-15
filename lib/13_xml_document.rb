class XmlDocument
  attr_accessor :indents, :indent_level

  def initialize(indents=false)
    self.indents = indents
    self.indent_level = 0
  end

  def render_tag(tag_name, attrs = {}, &block)
    attrs_string = attrs.map do |key, value|
      "#{key}='#{value}'"
    end.join(" ")

    if block
      open_tag = ("  " * indent_level) + (attrs.size == 0 ? "<#{tag_name}>" :
        "<#{tag_name} #{attrs_string}>") + (self.indents ? "\n" : "")

      self.indent_level += 1 if self.indents
      body = yield
      self.indent_level -= 1 if self.indents

      close_tag = ("  " * indent_level) + "</#{tag_name}>" + (self.indents ?
        "\n" : "")

      [open_tag, body, close_tag].join
    else
      ("  " * indent_level) + (attrs.size == 0 ? "<#{tag_name}/>" :
        "<#{tag_name} #{attrs_string}/>") + (self.indents ? "\n" : "")
    end
  end

  def method_missing(method_name, *args, &block)
    render_tag(method_name, *args, &block)
  end
end
