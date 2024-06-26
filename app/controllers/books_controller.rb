class BooksController < ApplicationController

   def top
   end


   def new
   @book = Book.new
   end

  def index
    @books = Book.all
    @book = Book.new
  end

  def show
   @book = Book.find(params[:id])
  end


  def edit
  @book = Book.find(params[:id])
  end

    def create
  @book = Book.new(book_params)
  if @book.save
    flash[:notice] = "Book was successfully created."
    redirect_to book_path(@book)
  else
    @books = Book.all
   render :index
  end
end

    def update
     @book = Book.find(params[:id])
      if @book.update(book_params)
        flash[:notice] = "Book was successfully updated."
      redirect_to book_path(@book)
    else
    flash[:notice] = "errors prohibited this book from being saved:"
    @books = Book.all
      render :edit
    end
    end

  def destroy
  @book = Book.find(params[:id])
  if @book.destroy
    flash[:notice] = "Book was successfully destroyed."
    redirect_to books_path
  else
    flash[:notice] = "Errors prohibited this book from being saved"
    @book = Book.all
    render :index
  end
  end


  private

  def book_params
    params.require(:book).permit(:title, :body)
  end
end
