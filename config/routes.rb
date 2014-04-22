GAL::Application.routes.draw do
  
  get "welcome/index"
  resources :jobs
  resources :companies do
    resources :contacts
  end
  devise_for :users
  root to: 'welcome#index'
end
