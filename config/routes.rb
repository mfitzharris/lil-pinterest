Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/users/new' => 'users#new'
  post '/users' => 'users#create'
  get '/users/:id' => 'users#show', as: 'user'

  get '/sessions/new' => 'sessions#new'
  post '/sessions' => 'sessions#create'
  delete '/sessions' => 'sessions#destroy'

  get '/boards/new' => 'boards#new'
  post '/boards' => 'boards#create'
  get '/boards/:id' => 'boards#show', as: 'board'

  get '/pins/new' => 'pins#new'
  post '/pins' => 'pins#create'
  get '/pins/:id' => 'pins#show', as: 'pin'

end
