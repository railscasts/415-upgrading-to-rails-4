Screencaster::Application.routes.draw do
  resources :episodes do
    collection do
      patch :update_many
    end
  end
  get 'new', to: 'episodes#new'
  root to: 'episodes#index'
end
