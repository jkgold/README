Rails.application.routes.draw do


  devise_for :users
  get 'questions/index'

  get 'questions/new'

  get 'questions/create'

  get 'questions/show'

  get 'questions/edit'

  get 'questions/update'

  get 'questions/destroy'

resources :posts, :advertisements



get 'about' => 'welcome#about'


root to: 'welcome#index'

end
