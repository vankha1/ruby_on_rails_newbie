Rails.application.routes.draw do
  root "articles#index"

  # This creates comments as a nested resource within articles. This is another part of capturing the hierarchical relationship that exists between articles and comments.
  resources :articles do
    resources :comments
  end
end
