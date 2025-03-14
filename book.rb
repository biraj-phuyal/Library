# frozen_string_literal: true

class Book
    attr_accessor :title :author

    def initialize(title, author)
        @title = title
        @author = author
    end

    def status
        return available unless title.check_out
    end

    
end