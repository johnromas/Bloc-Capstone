GAL::Application.routes.draw do
  


  get "contract_types/index"
  resources :sachse_groups
  get "welcome/index"
  resources :jobs
  resources :psr
  resources :contract_types
  resources :states
  resources :project_types
  resources :project_phases
  resources :companies do
    resources :contacts
  end
  devise_for :users
  root to: 'welcome#index'
end
