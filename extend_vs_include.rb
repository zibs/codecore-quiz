# Write a piece of code to demonstrate the difference between `include` and `extend` in using Ruby modules with classes to include methods. Make sure to demonstrate calling the methods with your code.

# extend can be called without instantiating an object
# extend injects as class methods

module PhilosophicalHelperMethods
  def materiality?
    "language"
  end
end

class Poetry
  extend PhilosophicalHelperMethods
end

class Code
  extend PhilosophicalHelperMethods
end

p Code.materiality? # "language"
p Poetry.materiality? # "language"


# include injects as instance methods

module CountingHelperMethods
  def semicolon_count
    @content.scan(/;/).length
  end
end


class ContinentalPhilosophyPaper
  include CountingHelperMethods
  attr_reader :content

  def initialize(text)
    @content = text
  end
end

class AnalyticPhilosophyPaper
  include CountingHelperMethods
  attr_reader :content

  def initialize(text)
    @content = text
  end
end

p nietzsche = ContinentalPhilosophyPaper.new("This;Is;One;Of;Nietzches;Books")
p wittgenstein = ContinentalPhilosophyPaper.new("Early Wittgenstein gets right to the point; although will opt for a semicolon occasionaly.")

p nietzsche.semicolon_count #6
p wittgenstein.semicolon_count #1
