Rails.application.routes.draw do
  resources :articles do
    collection do
      get "/search_title" => 'articles#search'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
