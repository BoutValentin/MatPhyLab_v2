Rails.application.routes.draw do
  devise_for :users
  get 'cours', to: "courses#index"
  get 'cours/:id', to: 'courses#show', as: 'cour'
  get "classe", to: 'grades#index'
  get "matiere", to: 'matters#index'
  root 'static_pages#home'
  get '/home', to: redirect('/')
  get '/accueil', to: redirect('/')
  get '/legale', to: 'static_pages#legal'
  get '/contact', to: redirect('/contacts')
  resources :contacts, only: [:index, :create ]
  
  authenticate :user do
    mount Avo::Engine => Avo.configuration.root_path
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
