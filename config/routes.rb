Underpants::Application.routes.draw do
  devise_for :users
  resource :profile, :only => [:edit, :update, :show]

  constraints(Subdomain) do
  end

  constraints :subdomain => "admin" do

    namespace "admin" do
      resources :accounts
      resources :users
      root :to => "users#index"
    end

  end
  
  devise_scope :user do 
    root :to => "devise/sessions#new"
  end

end
