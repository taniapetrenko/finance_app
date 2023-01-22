Rails.application.routes.draw do
  resources :reports, only: :index
  get 'reports/report_by_category'
  get 'reports/report_by_dates'
  get 'main/index'
  resources :operations
  resources :categories
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "main#index"
end
