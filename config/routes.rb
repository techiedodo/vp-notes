Rails.application.routes.draw do
  devise_for :tutors
  root to: 'welcome#index'
  get 'contact' => 'welcome#contact'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
