Rails.application.routes.draw do
  devise_for :users
  scope '/admin' do
    resources :users
  end

  resources :items
  resources :roles
  resources :users
  
  authenticated :user do
    root to: 'items#index', as: :authenticated_root
  end
  root to: 'welcome#index'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
