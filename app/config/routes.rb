#app/config/routes.rb


Rails.application.routes.draw do
  root to: 'site#index'
  namespace :api do
    namespace :scrty do
      resources :scrapper, only: [:index, :create, :destroy, :update]
    end
  end
end

