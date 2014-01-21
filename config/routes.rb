Myblog::Application.routes.draw do
  get "comments/create"
  get "comments/destroy"
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
  resources :comments, :only => [:create, :destroy]

  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users

  devise_scope :user do
    match 'login' => 'devise/sessions#new', via: :get
    match 'signup' => 'registrations#new', via: :get
  end

  constraints(Subdomain) do
    match '/' => 'blog#index', via: :get
  end
  root :to => "home#index"

  match "/dashboard" => "articles#index", via: :get
  match "blog" => "blog#index", via: :get

  match 'profile' => 'profiles#show', via: [:get]
  match 'profile' => 'profiles#update', via: [:patch]
  match 'profile/edit' => 'profiles#edit', via: :get, as: :edit_profile

end
