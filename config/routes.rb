Rails.application.routes.draw do


  get 'questions/index'

  get 'questions/new'

  get 'questions/create'

  get 'questions/show'

  get 'questions/edit'

  get 'questions/update'

  get 'questions/destroy'

resources :posts, :advertisements, :questions 



get 'about' => 'welcome#about'


root to: 'welcome#index'

end
