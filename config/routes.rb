PalMoanalua::Application.routes.draw do
  resources :registrations do
    member do
      get 'thankyou'
    end
  end

  authenticated :user do
    root :to => 'home#volleyball'
  end
  root :to => "home#volleyball"
  
  devise_for :users
  resources :users
  
  devise_scope :user do
    get "/cnaks" => "devise/sessions#new"
  end
end