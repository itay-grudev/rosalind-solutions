class Integer
  def fact # Factorial
    Math.gamma(self+1).floor
  end
end