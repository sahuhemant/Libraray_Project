module AddBook
  def add_book(title,author,genre,year_published)
    book=Book.new(title,author,genre,year_published)
    add_book_stored=@catalog<<book
    puts "Book Added Successfully !"
    store_book(add_book_stored)
    puts "jay shri"
  end
end