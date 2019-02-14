Rails.application.routes.draw do
  scope "(:locale)", locale: /ja|en/ do
    get 'sessions/new' 
    resources :line_items
    resources :carts
    resources :products
    resources :stores
    resources :users
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    get 'say/hello', to: 'say#hello'
    get 'say/goodby', to: 'say#goodby'
    get '', to: 'stores#index'
    
    get 'login', to: 'sessions#new'
    post 'login', to: 'sessions#create'
    delete 'logout', to: 'sessions#destroy'
  end
end
