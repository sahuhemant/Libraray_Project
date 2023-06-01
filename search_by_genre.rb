module SearchByGenre
  def search_by_genre(genre)
    matching_books=@catalog.select{|book|book.genre.downcase.include?(genre.downcase)}
    display_books(matching_books)
  end
end