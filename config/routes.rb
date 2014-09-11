Rails.application.routes.draw do

  resources :ntcmarshals, :exams
  get 'five_timers' => 'welcome#five_timers'
  get 'newbies' => 'welcome#newbies'
  get 'veterans' => 'welcome#veterans'
  root 'welcome#index'


end
