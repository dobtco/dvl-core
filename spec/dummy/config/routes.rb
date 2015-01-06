Rails.application.routes.draw do
  scope controller: :home do
    get '', action: :index
    get 'flashes'
    get 'footer'
    get 'forms'
  end
end
