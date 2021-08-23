Rails.application.routes.draw do
  get "classe", to: 'grades#index'
  get "matiere", to: 'matters#index'
  root 'static_pages#home'
  get '/home', to: redirect('/')
  get '/accueil', to: redirect('/')
  get '/legale', to: 'static_pages#legal'
  get '/contact', to: 'contact#index'
  post '/contact', to: 'contact#new'
  mount Avo::Engine, at: Avo.configuration.root_path
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
