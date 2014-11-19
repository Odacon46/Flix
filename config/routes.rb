Flix::Application.routes.draw do
<<<<<<< HEAD
  devise_for :users
  get 'about' => 'movies#about'
  get 'privacy' => 'movies#privacy'
  get 'movies/recommended/:placement' => 'movies#recommended'
  resources :movies
  resources :genres, only: :show
=======
  get 'about' => 'movies#about'
  get 'privacy' => 'movies#privacy'
  resources  :movies
>>>>>>> 2f4362f9cc18d8373d784910fed8064851e4cb46
  root 'movies#index'
  get 'text-m-for-murder' => 'movies#murder'
end
