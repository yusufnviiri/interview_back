Rails.application.routes.draw do
  get 'users/index'
  get 'users/show'

  get '/all_replies', to: 'reply#replies'
  get '/myscore', to: 'reply#my_score'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
   resources    :questions do
    resources :reply
   end
   resources :users, param: :email
  # Defines the root path route ("/")
  # root "articles#index"
end
