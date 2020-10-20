Rails.application.routes.draw do

  get 'posts/index'
  get 'posts/new', to: 'posts#new'
  get 'posts/:id', to: 'posts#show', constraints: { id: /\d+/ }
  get 'posts/:topic', to: 'posts#topic'

  post 'posts/create', to: 'posts#create'
  get 'posts/edit/:id', to: 'posts#edit'
  post 'posts/update/:id', to: 'posts#update'
  
  root to: 'posts#index'

end
