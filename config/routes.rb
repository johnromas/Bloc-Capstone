GAL::Application.routes.draw do
  resources :sachse_groups
  get "welcome/index"
  resources :jobs do
    resources :checkbooks
    resources :job_assignments
    resources :staff_assignments
    resources :dailys
  end
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
