Rails.application.routes.draw do
  
  get 'authors/' => 'authors#index'
  get 'books/' => 'books#index'  
  get 'authors/:id'=> 'authors#show'
  get 'books/:id' => 'books#show', as: :book
  get 'authors/:id'=> 'authors#show', as: :author
  get 'books/:id/edit' => 'books#edit', as: :edit_book


end
