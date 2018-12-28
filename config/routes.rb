Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  ### Files View ###
  namespace :files do
    get     '/files'         =>    'files#index'
    get     '/files/new'     =>    'files#new'
    post    '/files'         =>    'files#create'
    get     '/files/:id'   =>    'files#show'
    delete  '/files/:id'     =>    'files#destroy'
  end

  ### API ###
  namespace :api do
    namespace :v1 do
      get     '/sfs'         =>    'sfs#index'
      post    '/sfs'         =>    'sfs#create'
      get     '/sfs/:id'   =>    'sfs#show'
      delete  '/sfs/:id'     =>    'sfs#destroy'
    end
  end
end
