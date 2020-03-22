Rails.application.routes.draw do
  
  devise_for :users
  root 'top#index'
  
  resources :list, except: %i(index) do
    resources :card, expect: %i(index)
  end
end
