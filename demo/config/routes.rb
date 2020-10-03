Rails.application.routes.draw do
  resources :articles
  root to: "home#index"
  resources :users  
  scope "(:locale)", locale: /en|pirate/ do
    get 'book/list'
    get 'book/new'
    post 'book/create'
    patch 'book/update'
    get 'book/show'
    get 'book/edit'
    get 'book/delete'
    get 'book/update'
    get 'book/show_subjects'
  end
  resources :resumes, only: [:index, :new, :create, :destroy]
end