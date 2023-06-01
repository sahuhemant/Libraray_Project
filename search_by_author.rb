module SearchByAuthor
  def search_by_author(author)
    matching_books=@catalog.select{|book| book.author.downcase.include?(author.downcase)}
    display_books(matching_books)
  end
end  