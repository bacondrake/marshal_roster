Rails.application.routes.draw do

  get 'sessions/new'

  get 'users/new'

  resources :ntcmarshals, :exams
  get 'five_timers' => 'welcome#five_timers'
  get 'newbies' => 'welcome#newbies'
  get 'veterans' => 'welcome#veterans'
  root 'welcome#index'

  # Users
  get 'signup'  => 'users#new'
  resources :users

  # Sessions
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'

  # Account activation
  resources :account_activations, only: [:edit]

end
