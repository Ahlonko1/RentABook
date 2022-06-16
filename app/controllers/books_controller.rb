class BooksController < ApplicationController

  def index
    @books = Books.all
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    @book.save
    redirect_to restaurant_path(@book)
  end

  private

  def book_params
    params.require(:book).permit(:title, :language, :synopsis)
  end


end
