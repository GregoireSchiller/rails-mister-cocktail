Rails.application.routes.draw do
  resources :cocktails do
    resources :doses, only: [:new, :create, :destroy]
  end

  # delete 'doses/:id' => 'doses#destroy' as: :doses

  root 'cocktails#index'
end
