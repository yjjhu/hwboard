Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'posts#index'#定義首頁
  #設定路由
  resources :posts
  resources :categorys
  resources :comments
  resources :connections
end
