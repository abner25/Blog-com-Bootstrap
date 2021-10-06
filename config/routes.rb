Rails.application.routes.draw do
  devise_for :users
  root 'articles#index'

  # Colocar um comentário dentro do article
  resources :articles do
    resources :comments, only: %i[create destroy]
  end

  resources :categories, except: [:show]
end
