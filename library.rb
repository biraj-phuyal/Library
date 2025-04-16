# frozen_string_literal: true

require_relative 'book'
require_relative 'messages'
# This is the class for libary
class Library
  attr_accessor :books

  def initialize
    @books = []
  end

  def add_book(book)
    books << book
    puts Messages::Libary.added_book(book)
  end

  def create_book(title, author)
    add_book(Book.new(title, author))
  end

  def list_books
    available_books = books.select(&:available?)
    if available_books.empty?
      puts Messages::Libary::NO_BOOK_AVAILABLE
    else
      available_books.each { |book| puts book }
    end
  end

  def check_out(title)
    find_book(title)&.check_out
  end

  def return_book(title)
    find_book(title)&.return_book
  end

  private

  def find_book(title)
    book = books.find { |b| b.title == title }
    raise Messages::Libary::BOOK_NOT_FOUND unless book

    book
  end
end
