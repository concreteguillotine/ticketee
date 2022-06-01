Rails.application.routes.draw do
  namespace :admin do
    root "application#index"

  
    resources :projects, except: [:index, :show]
    resources :users do
      member do
        patch :archive 
      end
    end
    resources :states, only: [:index, :new, :create] do
      member do
        patch :make_default
      end
    end
  end
  
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
    root "projects#index"

  resources :projects, only: [:index, :show, :edit, :update] do
    resources :tickets
  end

  scope path: "tickets/:ticket_id", as: :ticket do
    resources :comments, only: [:create]
  end
end