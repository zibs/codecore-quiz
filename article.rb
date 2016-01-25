require './titleize.rb'
module Blog

  class Article
    include HelperMethods
    attr_accessor :body, :title

    def initialize(title, body)
      @title = titleize(title)
      @body = body
    end

  end

  class Snippet < Article

    def initialize(article_title, article_body)
      super
    end

    def body
      @body.length > 100 ? @body = @body[0..100] + "..." : @body
    end
  end

end

title = "frater atque vale frater"
catullus = "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur."

latin_article = Blog::Article.new(title, catullus)
latin_snippet = Blog::Snippet.new(latin_article.title, latin_article.body)

p "It's article's title is: #{latin_article.title}"
p "It's article's body is: #{latin_article.body}"
p "The snippet's title is: #{latin_snippet.title}"
p "The snippet's body is: #{latin_snippet.body}"
