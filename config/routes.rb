Rails.application.routes.draw do
  root to: 'welcome#index'
  get 'contact' => 'welcome#contact'
  devise_for :tutors
  resources :notes

  resources :students do
    resources :tutoring_sessions, path: 'sessions'
  end
end
