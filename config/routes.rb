Rails.application.routes.draw do
  resource :home, only: [:show]

  namespace :admin do
    resources :projects
    resources :members
    resource :dashboard, only: [:show]

    root to: 'dashboards#show'
  end

  root to: 'homes#show'
end
