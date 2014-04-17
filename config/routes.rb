GAL::Application.routes.draw do
  
  resources :jobs
  resources :companies do
    resources :contacts
  end
  devise_for :users
  root to: 'companies#index'
end
