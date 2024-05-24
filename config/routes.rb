Rails.application.routes.draw do
  get 'hobbies/index'
  get 'hobbies/show'
  get 'projects/index'
  get 'projects/show'
  get 'educations/index'
  get 'educations/show'
  get 'jobs/index'
  get 'jobs/show'
  get 'skills/index'
  get 'skills/show'
  get 'contacts/index'
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  resources :contacts, only: %i[index]
  resources :skills, only: %i[index show]
  resources :jobs, only: %i[index show]
  resources :educations, only: %i[index show]
  resources :projects, only: %i[index show]
  resources :hobbies, only: %i[index show]
end
