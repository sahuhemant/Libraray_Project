module DisplayBooks	
  private
  def display_books(books)
  	if books.empty?
  		puts "No Matching books Found"
	  else
	    books.each do |book|
	    	puts "Title : #{book.title}"
	      puts "Author : #{book.author}"
	      puts "Genre :#{book.genre}"
		    puts "Year Published : #{book.year_published}"
		    puts "----------------------------------"
      end
    end 
  end
end
