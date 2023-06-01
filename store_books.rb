module StoreBooks
	def store_book(add_book_stored)
		aFile = File.new("store.csv", "r+")
		aFile.syswrite("Title - Author -  Genre - Publish \n")
			add_book_stored.each do |book|
				aFile.syswrite(book.title)
	      aFile.syswrite(",")
	      aFile.syswrite(book.author)
	      aFile.syswrite(",")
	      aFile.syswrite(book.genre)
	      aFile.syswrite(",")
	      aFile.syswrite(book.year_published)
		    aFile.syswrite("\n")
			end
	end		
end
