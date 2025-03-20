# Book class represents a book in the system.
# It holds information about the book's title, author, and publication date.
# You can create, update, and retrieve book details using this class.

# frozen_string_literal: true

class Book
  attr_accessor :title, :author, :status

  def initialize(title, author)
    @title = title
    @author = author
    @status = 'available'
  end

  def available?
    @status == 'available'
  end

  def check_out
    raise 'Book already checked out' unless available?

    @status = 'checked_out'
  end

  def return_book
    raise 'Book is already available' if available?

    @status = 'available'
  end

  def to_s
    "#{title} by #{author} (#{status})"
  end
end
