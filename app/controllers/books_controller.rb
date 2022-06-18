class BooksController < ApplicationController
  def index
    if params[:query].present?
      @books = Book.search_by_title_and_language("%#{params[:query]}%")
    else
      @books = Book.all
    end
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to restaurant_path(@book)
    else
      render :new, status: :unprocessable_entity
    end
  end



  private

  def book_params
    params.require(:book).permit(:title, :language, :synopsis)
  end
end
