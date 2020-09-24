Rails.application.routes.draw do
  	resources :users
  	get 'こんにちは', to: 'book#list'
	root to: 'book#list'
	get 'book/list'
	get 'book/new'
	post 'book/create'
	patch 'book/update'
	get 'book/show'
	get 'book/edit'
	get 'book/delete'
	get 'book/update'
	get 'book/show_subjects'
	resources :resumes, only: [:index, :new, :create, :destroy]
end