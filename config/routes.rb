Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :categories, only: [:index] do
    resources :spots, only: [:index]
  end
  resources :spots, only: [:show] do
    resources :events, only: [:create, :new]
  end
  resources :events, only: [:show, :index] do
    resources :bookmarks, only: [:create]
    resources :chatrooms, only: :show do
      resources :messages, only: :create
    end
  end
  resources :bookmarks, only: [:index]
end
