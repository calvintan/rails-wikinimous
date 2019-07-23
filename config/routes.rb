Rails.application.routes.draw do
  get 'articles/index'
  get 'articles/show'
  get 'articles/edit'
  get 'articles/update'
  get 'articles/create'
  get 'articles/destroy'
  get 'articles/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
