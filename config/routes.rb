GAL::Application.routes.draw do
  
  get "checkbooks/create"
  get "job_assignments/create"
  get "job_contacts/create"
  get "contract_types/index"
  resources :sachse_groups
  get "welcome/index"
  resources :jobs
  resources :psr
  resources :contract_types
  resources :job_assignments
  resources :checkbooks
  resources :staff_assignments
  resources :states
  resources :project_types
  resources :project_phases
  resources :companies do
    resources :contacts
  end
  devise_for :users
  root to: 'welcome#index'
end
