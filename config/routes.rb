Rails.application.routes.draw do
  resources :todo_lists do
     resources :todo_items
    end
  root "todo_lists#index"
end

# "rake routes" command has been depreciated. Use "rails routes" instead 