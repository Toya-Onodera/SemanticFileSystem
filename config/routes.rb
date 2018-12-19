Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  namespace :api, constraints: { format: :json } do
    get '/api'
  end
end
