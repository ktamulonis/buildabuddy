Rails.application.routes.draw do
  root 'home#index'
  get '/admin' => 'home#admin'
  post'/admin' => 'home#import'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
