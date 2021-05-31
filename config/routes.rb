Rails.application.routes.draw do
  get 'articles/index'
  get 'articles/new'
  get 'articles/create'
  get 'articles/show'
  get 'articles/edit'
  get 'articles/update'
  get 'articles/destroy'
  resources :articles
  devise_for :users
  # root :to => 'welcome/index'
  root 'welcome#index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
