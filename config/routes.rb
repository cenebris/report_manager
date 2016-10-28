Rails.application.routes.draw do
  resources :reports
  root to: 'reports#new'
end
