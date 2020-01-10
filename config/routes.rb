Rails.application.routes.draw do

  namespace :api do
    resources :restaurants, only: [:index, :show] do
      resources :dishes, only: :index
    end
    resources :dishes, only: [:index, :show] do
      resources :restaurants, only: :index
    end
  end

end
