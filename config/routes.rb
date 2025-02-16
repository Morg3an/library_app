Rails.application.routes.draw do
  resources :books do
    resources :borrowings, only: [:new, :create]
  end

  resources :borrowings, only: [] do
    member do
      patch :return_book
    end
  end

  root "books#index"
end