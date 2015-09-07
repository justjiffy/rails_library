Rails.application.routes.draw do
  root 'mains#index' 
  get '/about' => 'mains#about'
  get '/events' => 'mains#events'
  get '/contact' => 'mains#contact'

  get 'authors/' => 'authors#index'
  get 'books/' => 'books#index' 

  get 'books/new' => 'books#new', as: :new_book
  get 'authors/new' => 'authors#new', as: :new_author

  get 'books/:id' => 'books#show', as: :book
  get 'authors/:id'=> 'authors#show', as: :author

  post 'authors/' => 'authors#create'
  post 'books/' => 'books#create'
  
  get 'books/:id/edit' => 'books#edit', as: :edit_book
  get 'authors/:id/edit' => 'authors#edit', as: :edit_author

  patch 'authors/:id' => 'authors#update'
  patch 'books/:id' => 'books#update'

  delete 'books/:id' => 'books#destroy'
  delete 'authors/:id' => 'authors#destroy'

end
