Rails.application.routes.draw do


  

  get 'summary/new'

 devise_for :users
 resources :users, only: [:update]
 resources :topics do 
 	resources :posts, except: [:index]
 end
 


get 'about' => 'welcome#about'


root to: 'topics#index'

end
