class BooksController < ApplicationController
  def index
  	@books = Book.all
  end

  def show
  	@books = Book.all
  	@book = Book.find(params[:id])
  	@authors = Author.all
  end

  def create 
  	@book = Book.new(book_params)
  	if @book.save
  		redirect_to books_path
  	else 
  		render :new
  	end
  end

  def new
  	@book = Book.new
  	@authors = Author.all
  end

  def edit
  	@book = Book.find(params[:id])
  end

  def update
  	@book = Book.find(params[:id])
  	if @book.update_attributes(book_params)
  		redirect_to books_path
  	else
  		render :edit
  	end
  end


  private
	def book_params
		params.require(:book).permit(:title, :copyright, :publisher, :desc, :language )
	end

end
