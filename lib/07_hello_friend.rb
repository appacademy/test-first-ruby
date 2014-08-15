class Friend
  def greeting(name = nil)
    if name
      "Hello" + (", #{name}") + "!"
    else
      "Hello!"
    end
  end
end
