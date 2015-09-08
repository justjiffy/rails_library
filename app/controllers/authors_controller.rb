class AuthorsController < ApplicationController
  def index
  	@authors = Author.all.order("l_name")
  end
  
  def show
  	@author = Author.find(params[:id])
  	@book_array = Book.where("author_id = ?", @author)
    @books = @book_array.map{ |x| {name: x.title, id: x.id} }
  end
  

  def new
  	@author = Author.new
  end

  def edit
  	@author = Author.find(params[:id])
  end

  def create 
  	@author = Author.new(author_params)
  	if @author.save
  		redirect_to authors_path
  	else
  		render :new
  	end
  end

  def update
  	@author = Author.find(params[:id])
  	if @author.update_attributes(author_params)
  		redirect_to authors_path
  	else
  		render :edit
  	end
  end

   private
	def author_params
		params.require(:author).permit(:f_name, :l_name, :dob, :deceased)
	end

end
