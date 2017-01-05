Rails.application.routes.draw do
  root to: 'shifts#index'
  resources :shifts, only: [ :index, :new, :create, :show ]
  resources :workers, only: [ :new, :create, :edit, :update]
end
