Rails.application.routes.draw do
  get 'home/index'
  resources :enrollments
  resources :participants
  resources :coordinators do
    get :export_csv, on: :member
  end
  resources :registries
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
end
