 # Build a Ruby class called "Book". Objects of the Book class must have two attributes: title and chapters. Objects must have two methods: add_chapter and chapters. The `add_chapter` methods adds a chapter by giving it a title. The chapters method should display the number of chapters and lists all the chapters as in:

class Book
  attr_accessor :title, :chapters

  def initialize(title="", chapters={})
    @title = title
    @chapters = chapters
  end

  def add_chapter(str)
       chapter_number = @chapters.length + 1
       @chapters[chapter_number] = str
  end

  def chapters
    msg = "Your book, #{@title}, has #{@chapters.length} chapters: "
      @chapters.each do |chapter_num, chapter_title|
        msg += "#{chapter_num}. #{chapter_title} \n"
      end
    msg
  end

end

book = Book.new
book.title = "Ulysses"
book.add_chapter("Telemachus")
book.add_chapter("Scylla and Charybdis")
p book.chapters
