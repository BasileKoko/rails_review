Rails.application.routes.draw do
  # root 'home#index'
  # get 'about', to: 'home#about'
  # resources :articles
  #
  # namespace :admin do
  #   get  'dashboard/main', to: 'dashboard#main'
  #   get 'dashboard/user', to:  'dashboard#user'
  #   get 'dashboard/blog',  to:  'dashboard#blog'
  #end

  resources :posts do
    resources :comments
  end
end
