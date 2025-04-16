# frozen_string_literal: true

require_relative 'messages'

# This is the Book class
class Book
  attr_accessor :title, :author, :status

  CHECKED_OUT = 'checked_out'
  AVAILABLE = 'available'
  DEFAULT_STATE = AVAILABLE

  def initialize(title, author)
    @title = title
    @author = author
    @status = DEFAULT_STATE
  end

  def available?
    status == AVAILABLE
  end

  def check_out
    raise Messages::Book::ALREADY_CHECKED_OUT unless available?

    @status = CHECKED_OUT
  end

  def return_book
    raise Messages::Book::ALREADY_AVAILABLE if available?

    @status = AVAILABLE
  end

  def to_s
    Messages::Book.display_book(self)
  end
end
