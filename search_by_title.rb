module SearchByTitle
  def search_by_title(title)
    matching_books=@catalog.select{|book|book.title.downcase.include?(title.downcase)}
    display_books(matching_books)
  end
end