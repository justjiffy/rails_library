class AuthorsController < ApplicationController
  def index
  	@authors = Author.all
  end
  
  def show
  	@author = Author.find(params[:id])
  	@books = [Book.where("author_id = ?", @author)]
  end
  

  def new
  end

  def edit
  end
end
