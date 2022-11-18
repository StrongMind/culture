class Checker
  def valid?(password)
    password.length >= 7 && password.match?(/[a-zA-Z]/)
  end
end