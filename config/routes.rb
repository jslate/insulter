Insulter::Application.routes.draw do

  root to: 'insults#index'
  resources :insults, only: [:index, :create] do
    member do
      post :up_thumb
      post :down_thumb
    end
  end

end
