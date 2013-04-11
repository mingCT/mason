Postit::Application.routes.draw do
  root to: 'posts#index'

  get '/register', to: 'users#xxx', as: 'register'
  get '/login', to: 'sessions#new', as: 'login'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy', as: 'logout'
   get '/march', to: 'posts#march'
   get '/february', to: 'posts#february'
   get '/january', to: 'posts#january'
   get '/total', to: 'posts#total'
   get '/greg', to: 'posts#greg'
   get '/phil', to: 'posts#phil'
   get '/mike', to: 'posts#mike'
   get '/tom', to: 'posts#tom'
   get '/ryan', to: 'posts#ryan'
   get '/omar', to: 'posts#omar'
   get '/ytd', to: 'posts#ytd'
  resources :posts, except: [:delete] do
  	member do
  		post 'vote'
  	end

    resources :comments, only: [:create]do
    end
  end
  resources :users, only: [:show, :create, :edit, :update]
  resources :categories, only: [:new, :create]
end
