Rails.application.routes.draw do
  resources :cocktails# do
  #   resources :reviews, only: [:new, :create]
  # end

  root 'cocktails#index'
end
