class MainsController < ApplicationController
  def index
  	@books = Book.take(10)
  	@authors = Author.take(10)
  end

  def about
  end

  def events
  end

  def contact
  end
end
