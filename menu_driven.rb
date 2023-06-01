module MenuDriven
	def menu
		library=Library.new

    loop do
    	puts "\n                      >>>>>>--  Welcome to Library Catalog  --<<<<<\n"
      puts "\n * Main Menu Choose option *\n"
      puts "\n1. Add a Book\n"
      puts "\n2. Search by Title \n"
      puts "\n3. Search by Author\n"
      puts "\n4. Search by Genre\n"
      puts "\n5. Display Catalog\n"
      puts "\n6. For Online Buying Books\n"
      puts "\n7. Buy Added Books the book\n"
      puts "\n8. Exit\n"
      puts "----------------------------------------"
      option=gets.chomp.to_i
      case option
      when 1
        loop do
          print "Enter Book Title :"
          @title=gets.chomp
          if @title.strip.empty?
            puts"..Write Title of Book.."
          else
            break
          end
        end

        print "Enter book Author :"
        author=gets.chomp
        print "Enter Book Genere :"
        genre=gets.chomp
        print "Enter Year Published :"
        year_published=gets.chomp
        library.add_book(@title, author, genre, year_published)
      when 2
        print "Enter Title to Search :"
        search_title=gets.chomp
        library.search_by_title(search_title)

      when 3
        print "Enter Author to Search :"
        search_author=gets.chomp
        library.search_by_author(search_author)

      when 4
        print "Enter Genre for Search :"
        search_genre=gets.chomp
        library.search_by_genre(search_genre)

      when 5
        library.display_catalog

      when 6
        library.registration

      when 7
        library.display_catalog
        puts"enter title for buyiing book"
        buy_title=gets.chomp
        library.buy_book(buy_title)

      when 8
        puts "Good Bye !!"
        break
             
      else
        puts "Invalid Option Please try again"
      end
          puts "........................................."
    
    end
  end
end