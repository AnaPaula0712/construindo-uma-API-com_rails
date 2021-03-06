Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :events, only: %i[index show update]
    end
  end
  root to: 'pages#home'
end
