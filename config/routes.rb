Rails.application.routes.draw do
  root to: 'cocktails#index'
  resources :cocktails, only: [:new, :index, :create, :show] do
    resources :doses, only: [:new, :create, :destroy]
  end
  resources :doses, only: :destroy
end
