BlueberryCMS::Engine.routes.draw do
  namespace :admin do
    resources :pages
  end

  scope '/:locale', locale: Regexp.new(I18n.available_locales.join('|')) do
    get '/(*path)', to: 'pages#show', as: :page
  end

  get '/(*path)', to: 'root#index'

  root to: 'root#index'
end
