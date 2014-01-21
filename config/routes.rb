Myblog::Application.routes.draw do
  get "blog/index"
  class Subdomain
    def self.matches?(request)
      case request.subdomain
      when 'www', '', nil
        false
      else
        true
      end
    end
  end

  resources :articles

  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users

  constraints(Subdomain) do
    match '/' => 'blog#index', via: :get
  end
  root :to => "home#index"


  match "/dashboard" => "articles#index", via: :get
end