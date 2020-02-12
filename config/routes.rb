Rails.application.routes.draw do
  resources :enrollments
  resources :participants
  resources :coordinators
  resources :registries
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
