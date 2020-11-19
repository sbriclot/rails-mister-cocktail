Rails.application.routes.draw do
  get 'doses/new', to:"doses#new"
  get 'doses/:id', to: "doses#create"
  delete 'doses/:id', to: "doses#destroy"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'cocktails#index'
  resources :cocktails, only: [:index, :show, :new, :create] do
    resources :doses, only: [:new, :create, :destroy]
  end
end
