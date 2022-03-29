class BooksController < ApplicationController
  
  before_action :load_book, except: [:index, :new, :create]
  before_action :require_user, except: [:index]
  before_action :require_admin, only: [:create, :edit, :update, :destroy]
  
  def index
    @q = Book.ransack(params[:q])
    @books = @q.result(distinct: false)
  end

  def show
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)

    if @book.save
      redirect_to @book
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @book.update(book_params)
      redirect_to @book
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @book.destroy

    redirect_to books_path, status: :see_other
  end

  private
    def book_params
      params.require(:book).permit(:name, :author, :release_date, :book_id, :deadline_for_return)
    end

    def load_book
      @book = Book.find(params[:id])
    end
end

