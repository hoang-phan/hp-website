Rails.application.routes.draw do
  namespace :admin do
    resources :projects
    resources :members
    resource :dashboard, only: [:show]

    root to: 'dashboards#show'
  end
end
