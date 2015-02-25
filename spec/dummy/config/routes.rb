Rails.application.routes.draw do
  root to: 'home#index'

  scope controller: :home do
    get 'flashes'
    get 'footer'
    get 'forms'
  end
end
