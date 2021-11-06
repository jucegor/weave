Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :projects, only: [:index, :create, :new, :edit, :show, :destroy]
  resources :enrollments, only: [:create, :my_enrollments, :update, :destroy]
  get '/my_enrollments', to: 'enrollment#my_enrollments'
  get '/my_projects', to: 'projects#my_projects'
  resources :users_reviews, only: [:create]
end
