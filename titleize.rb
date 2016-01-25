# 7. Implement the following code in Ruby: Create a module called HelperMethods that include a method called `titleize` that does the following: it takes in a string and returns the string back after capitalizing each word in that string. For example if you pass to the method a string "hello world" you should get back "Hello World". The methods should not capitalize the following words: in, the, of, and, or, from.

module HelperMethods

  def titleize(string)
    prepositions = %w(in the of and or from)
    string.split(" ").map do |word|
      if prepositions.include?(word)
        word
      else
        word.capitalize
      end
    end.join(" ")
  end

end
