Rails.application.routes.draw do
  resources :jobs
  resources :companies
  get 'admin/create_user'
  get 'admin/edit_user'
  get 'admin/list_user'
  get 'admin/_form'
  root 'pages#index'

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  # root "articles#index"

    # Permisos del admin
    resources :admin, only: [:index, :new, :create, :update]
    # Ruta para crear usuarios
    post 'admin/create', to: 'admin#create', as: 'admin_create'
    # Ruta para eliminar usuarios
    delete 'destroy_user/:id', to: 'admin#destroy_user', as: :destroy_user

end
