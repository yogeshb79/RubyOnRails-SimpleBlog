Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'post#index' , as: 'home'
    get 'about'=>'pages#about',as:'about'
  resources :post do
    resources :comments
  end

end
