Rails.application.routes.draw do
  resources :notes

  devise_for :tutors
  root to: 'welcome#index'
  get 'contact' => 'welcome#contact'
  resources :students
  resources :tutoring_sessions, path: 'sessions'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
