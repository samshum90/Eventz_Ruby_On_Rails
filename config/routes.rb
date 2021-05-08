Rails.application.routes.draw do
  
  
  resources :registrations
  root "events#index"

  resources :events do 
    resources :registrations
  end

  resources :users
  get "signup" => "users#new"
  # get "events" => "events#index"
  # get "events/new" => "events#new"
  # get "events/:id" => "events#show", as: "event"
  # get "events/:id/edit" => "events#edit", as: "edit_event"
  # patch "events/:id" => "events#update"
end
