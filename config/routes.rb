Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'api/v1/auth', skip: [:omniauth_callbacks]

  namespace :api do
    namespace :v1, defaults: { format: :json } do
      resources :pet_data, only: [:create]
    end
  end
end
