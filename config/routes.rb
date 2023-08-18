Rails.application.routes.draw do

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :lists, only: %i[show new create] do
    resources :bookmarks, only: %i[index new create destroy]
  end

  root to: "lists#index"
end
