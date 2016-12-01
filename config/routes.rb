Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

# root "dinosaurs#index"

# get "dinosaurs" => "dinosaurs#index"

root "dinosaurs#index"

  get "dinosaurs" => "dinosaurs#index"
  get 'dinosaurs/new' => "dinosaurs#new", as: :new_dinosaur
  get "dinosaurs/:id" => "dinosaurs#show", as: :dinosaur
  post "dinosaurs" => "dinosaurs#create"


end
