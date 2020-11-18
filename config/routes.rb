Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'pages#home'

  resources :gardens, only: [:show] do
    resources :plants, only: [:create]
  end

  resources :plants, only: [:destroy]
end
