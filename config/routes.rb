Rails.application.routes.draw do
  get 'more_info', to: 'people#more'
  resources :people do
    resources :goods
    resources :pays
    resources :delivers
  end
  devise_for :users
  root to: 'people#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
