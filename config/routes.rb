Rails.application.routes.draw do
  # root 'welcome#index'

  resources :meanings, only: [:show]
end
