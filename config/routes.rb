# Routes
Rails.application.routes.draw do
  resources :users do
    resources :videos do
      resources :replies
    end
    resources :posts do
      resources :comments
    end
    resources :transactions
    resources :tickets
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
