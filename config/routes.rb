Rails.application.routes.draw do

  resources :ntcmarshals, :exams
  get 'five_timers' => 'welcome#five_timers'
  root 'welcome#index'


end
