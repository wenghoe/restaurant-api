Rails.application.routes.draw do

  namespace :api do
    resources :restaurants
    resources :dishes
  end

end
