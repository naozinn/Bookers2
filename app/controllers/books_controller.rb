class BooksController < ApplicationController
  def show
    @book = Book.find(params[:id])
    @user = @book.user
    @book_new = Book.new
  end

  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    if @book.save
      redirect_to book_path(@book)
    else
      @books = Book.all
      @user = current_user
      render :show
    end
  end

  def index
    @books = Book.all
    @book = Book.new
    @user = current_user
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to books_path
  end

  private

  def book_params
    params.require(:book).permit(:title, :body)
  end

end
