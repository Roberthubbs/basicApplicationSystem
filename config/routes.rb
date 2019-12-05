Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: redirect('/jobs')
  resources :jobs, only: [:new, :create, :show, :index] do    
    resources :job_applications, only: [:create, :new, :index]
  end    
  resource :session, only: [:new, :reate, :destroy]
  resources :users, only: [:new, :create, :show]
end
