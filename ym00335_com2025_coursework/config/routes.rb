Rails.application.routes.draw do
  root 'home#home'
  get 'contact', to: 'home#contact'
  get 'posts', to: 'home#post'

  resources :posts
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
