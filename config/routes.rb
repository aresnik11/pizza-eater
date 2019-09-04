Rails.application.routes.draw do

  #patron routes
  get '/patrons', to: 'patrons#index', as: 'patrons'
  get '/patrons/:id', to: 'patrons#show', as: 'patron'

  #pizza routes
  get '/pizzas', to: 'pizzas#index', as: 'pizzas'
  get '/pizzas/custom', to: 'pizzas#custom', as: 'custom_pizza'
  post '/pizzas', to: 'pizzas#create_custom'
  get '/pizzas/new', to: 'pizzas#new', as: 'new_pizza'
  get '/pizzas/:id', to: 'pizzas#show', as: 'pizza'
  get '/pizzas/:id/edit', to: 'pizzas#edit', as: 'edit_pizza'
  post '/pizzas', to: 'pizzas#create'
  patch '/pizzas/:id', to: 'pizzas#update'
  delete '/pizzas/:id', to: 'pizzas#delete'

  #waiter routes
  get '/waiters', to: 'waiters#index', as: 'waiters'
  get '/waiters/:id', to: 'waiters#show', as: 'waiter'


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
