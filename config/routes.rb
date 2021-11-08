Rails.application.routes.draw do
  root 'home#index'
  namespace :admin do
    resources :candidates
  end
  namespace :api, format: 'json' do
    resources :sessions, only: %i(create destroy)
    resources :users, only: %i(create update) do
      get 'me', on: :collection
      get 'name_index', on: :collection
    end
  end
  get '*path', to: 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
