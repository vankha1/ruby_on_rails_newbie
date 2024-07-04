Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'auths/sessions',
    registrations: 'auths/registrations',
    passwords: 'auths/passwords',
    confirmations: 'auths/confirmations',
  }

  root "articles#index"

  # This creates comments as a nested resource within articles. This is another part of capturing the hierarchical relationship that exists between articles and comments.
  resources :articles do
    resources :comments
  end
end
