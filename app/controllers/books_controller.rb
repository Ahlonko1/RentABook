class BooksController < ApplicationController

  def index

    if params[:query].present?
      @boats = Boat.search_by_columns("%#{params[:query]}%")
    else
    @books = Books.all
    end
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
