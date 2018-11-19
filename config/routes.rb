Rails.application.routes.draw do

  devise_for :users
  resources :course_offerings
  resources :courses
  resources :registers


  root to: 'course_offerings#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
