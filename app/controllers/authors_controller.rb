class AuthorsController < ApplicationController
  def index
  	@authors = Author.all
  end
  
  def show
  	@author = Author.find(params[:id])
  	@book_array = Book.where("author_id = ?", @author)
    @books = @book_array.map{ |x| {name: x.title, id: x.id} }
  end
  

  def new
  end

  def edit
  end
end
