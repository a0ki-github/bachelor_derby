Rails.application.routes.draw do
  get 'home/index'
  namespace :admin do    
    resources :candidates
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
