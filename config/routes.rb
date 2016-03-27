Rails.application.routes.draw do
  namespace :admin do
    resources :projects
    resource :dashboard, only: [:show]
  end
end
