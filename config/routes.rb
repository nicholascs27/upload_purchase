Rails.application.routes.draw do
  resources :purchases do
    collection { post :import}
  end
  root  to: 'purchases#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
