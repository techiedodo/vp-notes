Rails.application.routes.draw do
  resources :notes

  devise_for :tutors
  root to: 'welcome#index'
  get 'contact' => 'welcome#contact'
  resources :students
  resources :tutoring_sessions, path: 'sessions'

end
