Guid::Application.routes.draw do
  resources :get_guids


  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "get_guids#new"
  devise_for :users
  resources :users
end