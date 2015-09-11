class MainsController < ApplicationController
  def index
    @books = Book.take(10)
    @authors = Author.take(10)

    #some other options...

    # the below code will change the layout for the mains#index page
    # render layout: "application2.html.erb"

    # this will render an alternative index page named alt_index
    # render :alt_index

  end

  def about
  end

  def events
  end

  def contact
  end
end
