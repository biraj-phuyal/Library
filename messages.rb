# frozen_string_literal: true

# This is where all the messages are defined
module Messages
  # Book messages
  module Book
    ALREADY_CHECKED_OUT = 'Book already checked out'
    ALREADY_AVAILABLE = 'Book is already available'

    def self.display_book(book)
      "#{book.title} by #{book.author} (#{book.status})"
    end
  end

  # Libary messages
  module Libary
    NO_BOOK_AVAILABLE = 'No books available'
    BOOK_NOT_FOUND = 'Book not found'

    def self.added_book(book)
      "Added: #{book}"
    end
  end
end
