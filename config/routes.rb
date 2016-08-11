Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cocktails, :ingredients, only: [:new, :index, :create, :show] do
    resources :doses, only: [:create, :new]
  end

  delete 'doses/:id', to: 'doses#destroy'

  root 'cocktails#index'
  # root to: 'ingredients#index'

  # namespace :manager do
  #   resources :cocktails, :ingredients, only: [:index, :destroy]
  # end
end
