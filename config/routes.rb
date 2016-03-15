#app/config/routes.rb


Rails.application.routes.draw do
  get 'hello_world', to: 'hello_world#index'
  root to: 'site#index'
  namespace :api do
    namespace :scrty do
      resources :scrapper, only: [:index, :create, :destroy, :update]
    end
  end
end

