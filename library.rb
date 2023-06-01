require_relative "add_book"
require_relative "search_by_title"
require_relative "search_by_author"
require_relative "register"
require_relative "search_by_genre"
require_relative "display_catalog"
require_relative "display_books"
require_relative "book_accessor"
require_relative "menu_driven"
require_relative "initialize"
require_relative "store_books"
require_relative "buy_book"

include BookAccessor

class Library
  include Initialize
  include AddBook
  include SearchByTitle
  include SearchByAuthor
  include Register
  include SearchByGenre
  include DisplayCatalog
  include DisplayBooks
  include StoreBooks
  include BuyBook
end

include MenuDriven
menu




  











