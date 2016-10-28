Rails.application.routes.draw do
  get 'admin', to: 'admin#show', as: 'admin'
  get 'admin/read', to: 'admin#read', as: 'read'

  resources :reports
  root to: 'reports#new'
end
