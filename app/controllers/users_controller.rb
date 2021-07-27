class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @books = @user.books
    @book = Book.new
    flash[:notice2] = "Signed in successfully."
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user.id)
    flash[:notice] = "You have created book successfully."
  end

  def create
    @user = User.new
    redirect_to books_path
  end

  def index
    @books = Book.all
    @book = Book.new
    @user = current_user
  end

  private

  def user_params
    params.require(:user).permit(:name, :profile_image,:introduction,:title)
  end

end
