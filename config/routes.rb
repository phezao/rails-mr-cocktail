Rails.application.routes.draw do
  root to: 'cocktails#index'
  resources :cocktails, only: %i[new create show index] do
    resources :doses, only: %i[create new destroy]
  end
end
