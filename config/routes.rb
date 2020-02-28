Rails.application.routes.draw do
  root 'pizzas#new'
  post 'add_ingredient', to: 'pizzas#add_ingredient', as: 'add'
  post 'remove_ingredient', to: 'pizzas#remove_ingredient', as: 'remove'
end
