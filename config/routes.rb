Rails.application.routes.draw do
 
  get 'events/index'
  get 'events/new'
  get 'events/create'
  get 'events/show'
  get 'events/edit'
  get 'events/update'
  get 'events/destroy'
  devise_for :users
  resources :events
  # root :to => 'welcome/index'
  root 'welcome#index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
