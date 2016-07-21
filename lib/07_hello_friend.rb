class Friend
  def greeting(name = "")
    if name.length > 0
      "Hello, #{name}!"
    else
      "Hello!"
    end

  end
end
