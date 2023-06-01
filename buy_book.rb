module BuyBook
  def buy_book(title)
    matching_books = @catalog.select { |book| book.title.downcase.include?(title.downcase) }

    if matching_books.empty?
      puts "No matching books found."
    elsif matching_books.length == 1
      book = matching_books.first
      puts "!! You have bought the book:!! "
      puts "Title : #{book.title}"
	    puts "Author : #{book.author}"
	    puts "Genre :#{book.genre}"
		  puts "Year Published : #{book.year_published}"
		  puts "---------------Thanks-------------------"
    else
      puts "Multiple books found with the same title. Please specify the author."
      author = gets.chomp

      specific_book = matching_books.find { |book| book.author.downcase == author.downcase }

      if specific_book.nil?
        puts "No matching book found with the specified title and author."
      else
     
        puts "!! You have bought the book:!! "
        puts "Title : #{specific_book.title}"
	      puts "Author : #{specific_book.author}"
	      puts "Genre :#{specific_book.genre}"
		    puts "Year Published : #{specific_book.year_published}"
		    puts "---------------Thanks-------------------"
      end
    end
  end
end