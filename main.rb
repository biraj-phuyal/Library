# frozen_string_literal: true

require_relative 'library'
require_relative 'book'

# Instructions:
# Create a "Book" class with:
#  - "title", "author" (both strings)
#  - "status" (defaults to "available")
#  - "check_out" method: Marks book as "checked_out" unless already checked out.
#  - "return_book" method: Marks book as "available" unless already available.
#  - "to_s" method: Returns a string representation of the book. This method is called when you use "puts" on a book object.
#
# Create a "Library" class with:
#  - "@books" array to store books.
#  - "add_book(book)": Adds a book and prints confirmation.
#  - "list_books": Prints available books.
#  - "check_out(title)": Finds a book by title and checks it out.
#  - "return_book(title)": Finds a book by title and returns it.
#  - "find_book(title)": Private method that searches for a book.

begin
    puts "\n# Creating a Library..."
    library = Library.new

    puts "\n# Creating Books..."
    book1 = Book.new("The Ruby Way", "Hal Fulton")
    book2 = Book.new("Eloquent Ruby", "Russ Olsen")

    puts "\n# Adding Books to Library..."
    library.add_book(book1)
    library.add_book(book2)

    puts "\n# Listing Available Books..."
    library.list_books

    puts "\n# Checking Out 'The Ruby Way'..."
    library.check_out("The Ruby Way")

    puts "\n# Checking Out 'Eloquent Ruby'..."
    library.check_out("Eloquent Ruby")

    puts "\n# Listing Books After Checkouts..."
    library.list_books

    puts "\n# Returning 'The Ruby Way'..."
    library.return_book("The Ruby Way")

    puts "\n# Returning 'Eloquent Ruby'..."
    library.return_book("Eloquent Ruby")

    puts "\n# Listing Books After Returns..."
    library.list_books

    puts "\n# Trying to Check Out a Nonexistent Book (Should Raise Error)..."
    library.check_out("Some Nonexistent Book")  # This should throw an error
rescue => e
    puts "Error: #{e.message}"
end

begin
    puts "\n# Trying to Check Out an Already Checked-Out Book (Should Raise Error)..."
    library.check_out("The Ruby Way")
    library.check_out("The Ruby Way")  # This should throw an error
rescue => e
    puts "Error: #{e.message}"
end

begin
    puts "\n# Trying to Return an Already Available Book (Should Raise Error)..."
    library.return_book("Eloquent Ruby")  # This should throw an error
rescue => e
    puts "Error: #{e.message}"
end