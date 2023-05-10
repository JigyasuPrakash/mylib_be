Rails.application.routes.draw do
  resources :books
  resources :authors

  get "get_author_books/:id" => "authors#get_author_books"
  get "get_book_authors/:id" => "books#get_book_authors"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
