Rails.application.routes.draw do

  get 'password_resets/new'

  get 'password_resets/edit'

  get 'sessions/new'

  get 'users/new'

  resources :ntcmarshals, :exams
  get 'five_timers' => 'welcome#five_timers'
  get 'newbies' => 'welcome#newbies'
  get 'veterans' => 'welcome#veterans'
  root 'welcome#index'

  # Users
  get 'signup'  => 'users#new'
  resources :users, except: [:new]

  # Sessions
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'

  # Account activation
  resources :account_activations, only: [:edit]

  # Forgotten password
  resources :password_resets,     only: [:new, :create, :edit, :update]

end
