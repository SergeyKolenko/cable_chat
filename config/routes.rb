Rails.application.routes.draw do
  root 'chat_rooms#index'
  devise_for :users

  resources :chat_rooms, only: [:index, :new, :create, :show]
end
